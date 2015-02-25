
include:
{%- if pillar.tftpd_hpa.server.enabled %}
- tftpd_hpa.server
{%- endif %}
