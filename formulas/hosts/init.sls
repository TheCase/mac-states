hosts:
  file.managed:
    - name: /etc/hosts
    - source: salt://hosts/templates/hosts.jinja
    - template: jinja
    - user: root
    - group: wheel
    - mode: '0644'
