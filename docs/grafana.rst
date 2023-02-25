Grafana
=========

.. image:: https://cdn.jsdelivr.net/gh/walkxcode/dashboard-icons/png/grafana.png
    :width: 200
    :height: 200

| Default User: ``admin``
| Default Password: ``admin``
| Default Portt: ``3000``

For additional information see `Grafana official docs <https://grafana.com/docs/grafana/latest/>`_

Configuration and Provisioning
------------------------------

By default the grafana role copy the ansible ``<host_vars>/files/dashboards`` folder in the remote
``/var/lib/grafana/dashboards``. The provisioning file should point to this folder or a sub-folder
if created.

Manually provided dashboards have to be in json format. (`reference <https://grafana.com/docs/grafana/latest/dashboards/build-dashboards/view-dashboard-json-model/>`_)

Further references on provisioning can be seen `here <https://grafana.com/docs/grafana/latest/administration/provisioning/>`_

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

None required
