Jellyseerr
==========

.. image:: https://cdn.jsdelivr.net/gh/walkxcode/dashboard-icons/png/jellyseerr.png
    :width: 200
    :height: 200

For additional information see `Jellyseerr official docs <https://hub.docker.com/r/fallenbagel/jellyseerr>`_

.. note::
    Includes a docker-compose in the /host_vars folder

Deployment Vars
---------------

Secrets
*******

None required

Host variables
**************

None required

Group variables
***************

Those variables are required for docker install on lxc

``docker``: true

``lxc_features``:
    - nesting=1
