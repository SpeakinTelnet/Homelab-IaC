Homepage
========

.. image:: https://cdn.jsdelivr.net/gh/walkxcode/dashboard-icons/png/homepage.png
    :width: 200
    :height: 200


| Default Port: ``3000``

For additional information see `Homepage official docs <https://gethomepage.dev/en/installation/>`_

.. note::
    Includes multiple configuration files in the /host_vars folder. Some services are
    auto-generated by default in the service file.

Deployment Vars
---------------

Secrets
*******

By default the .credentials file will be populated according to the auto-generated
service file. Both can be modified and used at will. 

Host variables
**************

None required

Group variables
***************

Those variables are required for docker install on lxc

``docker``: true

``lxc_features``:
    - nesting=1
