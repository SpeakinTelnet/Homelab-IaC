Mailcow
==========

.. image:: https://cdn.jsdelivr.net/gh/walkxcode/dashboard-icons/png/mailcow.png
    :width: 200
    :height: 200

| Default User: ``admin``
| Default Password: ``moohoo``

For additional information see `Mailcow official docs <https://docs.mailcow.email/>`_


Deployment Vars
---------------

Secrets
*******

None required

Host variables
**************

``mailcow_hostname``: 
    * FQDN hostname for the email

``mailcow_git_branch``: 
    * default to master

``mailcow_project_name``: 
    * Name for docker command purpose

``mailcow_theme``: 
    * Default to Lumen
    * choices: cerulean, cosmo, cyborg, darkly, flatly, journal, lumen, paper, readable,
      sandstone, simplex, slate, spacelab, superhero, united, yeti

``mailcow_redirect_http_to_https`` (y/n): 
    * default no

``mailcow__config_http_port``: 
    * default 80

``mailcow__config_http_bind``: 
    * default blank

``mailcow__config_https_port``: 
    * default 443

``mailcow__config_https_bind``: 
    * default blank

``mailcow__config_acl_anyone``: 
    * default to disallow
    * enables the `anyone` pseudo user

``mailcow__config_maildir_gc_time``: 
    * default to 1440
    * time in minutes before garbage collection

``mailcow__config_additional_san``:
    * list of additional SAN for the certificates

``mailcow__config_additional_server_names``: 
    * Additional server names for mailcow UI

``mailcow__config_skip_lets_encrypt`` (y/n):
    * default to n
    * Skip running ACME

``mailcow__config_acme_contact``:
    * Let's Encrypt registration contact information
    * Optional: Leave "" for none

``mailcow__config_enable_ssl_sni`` (y/n):
    * Create separate certificates for all domains

``mailcow__config_skip_ip_check`` (y/n):
    * Skip IPv4 check in ACME container

``mailcow__config_skip_http_verification`` (y/n):
    * Skip HTTP verification in ACME container

``mailcow__config_skip_clamd`` (y/n):
    * Skip ClamAV

``mailcow_rspamd_clamd_servers``: 
    * format as `clamd:3310`

``mailcow__config_skip_solr`` (y/n):
    * Skip Solr on low-memory systems

``mailcow__config_solr_heap``:
    * Solr heap size in MB

``mailcow__config_skip_sogo`` (y/n):
    * Will disable SOGo integration and therefore webmail

``mailcow__config_allow_admin_email_login`` (y/n):
    * Allow admins to log into SOGo as email user (without any password)

``mailcow__config_use_watchdog`` (y/n):
    * Enable watchdog (watchdog-mailcow) to restart unhealthy containers

``mailcow__config_watchdog_notify_email``:
    * Send watchdog notifications by mail (sent from watchdog@MAILCOW_HOSTNAME)
    * CAUTION:
      1. You should use external recipients
      2. Mails are sent unsigned (no DKIM)
      3. If you use DMARC, create a separate DMARC policy ("v=DMARC1; p=none;" in _dmarc.MAILCOW_HOSTNAME)
    * Multiple rcpts allowed, NO quotation marks, NO spaces

``mailcow__config_watchdog_notify_ban`` (y/n):
    * Notify about banned IP (includes whois lookup)

``mailcow__config_watchdog_subject``:
    * Subject for watchdog mails
    * Defaults to "Watchdog ALERT"

``mailcow__config_watchdog_external_checks`` (y/n):
    * Checks if mailcow is an open relay

``mailcow__config_log_lines``:
    * Max log lines per service to keep in Redis logs

``mailcow__config_sogo_expire_session``:
    * SOGo session timeout in minutes


Group variables
***************

Those variables are required for docker install on lxc

``docker``: true

``lxc_features``:
  - nesting=1

This container was crashing with swap when using less memory. Adjust accordingly
to your requirements

| ``disk``: "local-lvm:15"
| ``memory``: 4096
| ``swap``: 0