{% set username = salt['pillar.get']('username') %}

git.config:
  file.managed:
    - name: /Users/{{ username }}/.gitconfig
    - source: salt://git/templates/gitconfig.jinja
    - template: jinja
    - user: {{ username }}
    - group: staff

git.excludes:
  file.managed:
    - name: /Users/{{ username }}/.gitignore_global
    - source: salt://git/files/gitignore_global
    - user: {{ username }}
    - group: staff
