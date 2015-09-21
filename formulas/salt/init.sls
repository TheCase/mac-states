salt.saltme_script:
  file.managed:
    - name: /usr/local/bin/saltme
    - mode: '0755'
    - user: root
    - contents: |
        #!/bin/bash
        sudo salt-call --local state.highstate -l critical --state-output=changes $@
