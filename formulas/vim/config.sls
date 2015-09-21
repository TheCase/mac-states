{% set username = salt['pillar.get']('username') %}
vim.config:
  file.managed:
    - name: /Users/{{ username }}/.vimrc
    - source: salt://vim/files/vimrc
    - user: {{ username }}
    - group: staff
    - mode: '0644'
