
chrome:
  cmd.run:
    - name: brew cask install --appdir=/Applications google-chrome
    - user: {{ pillar['username'] }}
    - unless: ls -ld /Applications/Google\ Chrome.app
