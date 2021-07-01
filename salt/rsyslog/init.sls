copy_config_file:
  file.managed:
    - name: /etc/rsyslog.d/01-client.conf
    - source: salt://01-client.conf
    - makedirs: True

  module.run:
    - name: service.restart
    - m_name: rsyslog
