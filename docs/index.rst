Welcome to Homelab-IaC's documentation!
=======================================

.. include:: ../README.rst
    :start-after: .. readme-intro-start
    :end-before: .. readme-basic-usage-start

.. toctree::
   :maxdepth: 2
   :caption: Intro:

   overview
   preparation

.. toctree::
   :maxdepth: 1
   :caption: Actions:

   playbooks/main
   playbooks/deploy_lxc
   playbooks/bootstrap_lxc
   playbooks/change_password

.. toctree::
   :maxdepth: 1
   :caption: Service:

   services/bookstack
   services/cloudbeaver
   services/emqx
   services/frigate
   services/gitea
   services/grafana
   services/homepage
   services/jellyfin
   services/jellyseerr
   services/mailcow
   services/mattermost
   services/nzbget
   services/paperless
   services/prowlarr
   services/radarr
   services/sabnzbd
   services/sonarr

.. toctree::
   :maxdepth: 1
   :caption: Blockchains:

   blockchains/avalanchego
   blockchains/geth
   blockchains/lodestar
   blockchains/nethermind
   blockchains/polygon-bor
   blockchains/polygon-heimdall

.. toctree::
   :maxdepth: 1
   :caption: Add-ons:

   addons/ftp_server
   addons/loki
   addons/nfs_share
   addons/ohmyzsh
   addons/promtail
   addons/samba_share
   addons/unattended_upgrades

Indices and tables
==================

* :ref:`genindex`
* :ref:`modindex`
* :ref:`search`
