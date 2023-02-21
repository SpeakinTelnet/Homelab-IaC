Paperless-NGX
=============

.. image:: https://cdn.jsdelivr.net/gh/walkxcode/dashboard-icons/png/paperless-ng.png
    :width: 200
    :height: 200

For additional information see `Paperless-NGX official docs <https://docs.paperless-ngx.com/>`_

.. note::
    Includes a docker-compose and an environment file in the /host_vars folder

Deployment Vars
---------------

Secrets
*******

``paperless_secret_key``:
    * Auto-Generated
    * Random string used for authentication

``paperless_default_superuser_password``:
    * Manually added
    * Used to authenticate as the superuser


Host variables
**************

``paperless_default_superuser``:
    * Manually added
    * Used to authenticate as the superuser

``paperless_default_superuser_email``:
    * Optional, leave blank for None
    * Manually added
    * Used to authenticate as the superuser

Group variables
***************

Those variables are required for docker install on lxc

``docker``: true

``lxc_features``:
    - nesting=1

| Disk size minimum of 10g is recommended just to spin the docker image.
| ``disk``: "local-lvm:15"
