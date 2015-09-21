packages:
  pkg.installed:
    - pkgs:
    {%- for package in salt['pillar.get']('packages', ['saltstack']) %}
      - {{ package }}
    {% endfor %}
