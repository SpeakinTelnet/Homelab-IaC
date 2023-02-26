Nzbget
======

.. image:: https://cdn.jsdelivr.net/gh/walkxcode/dashboard-icons/png/nzbget.png
    :width: 200
    :height: 200


| Default Port: ``6789``
| Default User: ``nzbget``
| Default Password: ``tegbzn6789``
| (User and password are changed through host_vars)

For additional information see `Nzbget official docs <https://nzbget.net/documentation>`_

.. note::
    Includes a configuration file in the /host_vars folder

Deployment Vars
---------------

Secrets
*******

``nzbget_server1_password``:
    * Manually added
    * Add more <nzbget_server*_password> as you add more newsgroup servers
    * Additional password should be added along with the configuration file modification

``nzbget_control_password``:
    * Default to tegbzn6789
    * Used to access the webui or connect to nzbget


Host variables
**************

``nzbget_control_username``:
    * Default to nzbget
    * Used to access the webui or connect to nzbget

Group variables
***************

None required
