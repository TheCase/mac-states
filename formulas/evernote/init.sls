evernote:
  cmd.run:
    - name: brew cask install --appdir=/Applications evernote
    - user: {{ pillar['username'] }}
    - unless: ls -ld /Applications/Evernote.app
