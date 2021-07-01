install_munin:
  pkg.installed:
    - name: munin-node

  file.managed:
    - name: /etc/munin/munin-node.conf
    - source: salt://munin-node.conf
    - makedirs: True

  module.run:
    - name: service.restart
    - m_name: munin-node
