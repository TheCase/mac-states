vagrant:
  cmd.run:
    - name: brew cask install vagrant
    - user: {{ pillar['username'] }}
    - unless: ls -ld /usr/bin/vagrant
