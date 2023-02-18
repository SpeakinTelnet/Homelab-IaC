Gitea
=========

.. image:: https://cdn.jsdelivr.net/gh/walkxcode/dashboard-icons/png/gitea.png
    :width: 200
    :height: 200

For additional information see `Gitea official docs <https://docs.gitea.io/en-us/>`_

.. note::
    Includes a configuration file in the /host_vars folder

Deployment Vars
---------------

Secrets
*******

``gitea_internal_token``:
    * Auto-generated

``gitea_lfs_jwt_secret``:
    * Auto-generated

``gitea_sql_password``:
    * Auto-generated
    * Should not be changed unless you manually change the password in the SQL database

Host variables
**************

None required


Group variables
***************

None required
