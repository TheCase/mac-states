{% set username = salt['pillar.get']('username') %}

bash.profile:
  file.append:
    - name: /Users/{{ username }}/.profile
    - text: test -f $HOME/.custom_profile && . $HOME/.custom_profile

bash.custom_profile:
  file.managed:
    - name: /Users/{{ username }}/.custom_profile
    - source: salt://bash/files/custom_profile
    - user: {{ username }}
    - group: staff

# This removes the 'Last login' banner when creating a new local shell
bash.hushlogin:
  file.managed:
    - name: /Users/{{ username }}/.hushlogin
    - contents: ''
    - user: {{ username }}
    - group: staff
