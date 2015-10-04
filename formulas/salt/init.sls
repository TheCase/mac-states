salt.saltme_script:
  file.managed:
    - name: /usr/local/bin/saltme
    - mode: '0755'
    - user: root
    - contents: |
        #!/bin/bash
        sudo salt-call --local state.highstate -l critical --state-output=changes $@

salt.minion:
  file.managed:
    - name: /etc/salt/minion
    - user: root
    - contents: |
        file_client: local
        file_roots:
          base:
            - /srv/salt
            - /srv/formulas
        pillar_roots:
          base:
            - /srv/pillar
