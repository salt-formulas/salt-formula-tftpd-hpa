{%- from "tftpd_hpa/map.jinja" import server with context %}
{%- if server.enabled %}

tftpd_hpa_package:
  pkg.installed:
  - pkgs: {{ server.pkgs }}

tftpd_hpa_service:
  service.running:
  - name: {{ server.service }}
  - enabled: true
  - running: true

{%- endif %}