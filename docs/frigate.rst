Frigate
=========

.. image:: https://cdn.jsdelivr.net/gh/walkxcode/dashboard-icons/png/frigate.png
    :width: 200
    :height: 200

For additional informations see `Frigate official docs <https://docs.frigate.video/>`_

.. note::
    Includes a configuration file and a docker-compose in the /host_vars folder

Deployment Vars
---------------

Secrets
*******

``frigate_mqtt_password``: 
    * Manually added
    * Should match the mqtt parameters included in host_vars

Host variables
**************

``frigate_mqtt_host``:
    * Manually added
    * Address to your mqtt server (e.g., emqx.homelab)

``frigate_mqtt_port``:
    * Manually added
    * port to communicate with your mqtt server (e.g., 1883)

``frigate_mqtt_user``:
    * Manually added
    * User for your mqtt server


Group variables
***************

Those variables are required for docker install on lxc

``docker``: true

``lxc_features``:
    - nesting=1
