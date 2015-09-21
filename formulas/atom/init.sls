atom:
  cmd.run:
    - name: brew cask install --appdir=/Applications atom
    - user: {{ pillar['username'] }}
    - unless: ls -ld /Applications/Atom.app
