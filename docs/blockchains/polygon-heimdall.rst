Polygon-Heimdall
================

.. image:: https://raw.githubusercontent.com/maticnetwork/matic-docs/master/static/img/polygon-logo.png
    :height: 150

.. note::
    Includes two configuration files in the /host_vars folder. It's important to add the seeds and change the moniker 
    as seen in the `official documentation <https://wiki.polygon.technology/docs/operate/full-node-deployment>`_.

.. note::
    Bor and Heimdall are dependent of each-other

Heimdall is a validator node for Matic Network

For additional information see `Heimdall official repository <https://github.com/maticnetwork/heimdall>`_

Deployment Vars
---------------

Host variables
**************

``heimdall_network``:
    * Required
    * Can be either ``mainnet`` or ``mumbai``
