install docker:
  pkg.installed:
    - name: docker.io

  cmd.script:
    - name: docker.sh
    - source: salt://docker/docker.sh
