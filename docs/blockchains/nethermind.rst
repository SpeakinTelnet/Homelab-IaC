Nethermind
==========

.. image:: https://user-images.githubusercontent.com/337518/184757473-5d70ac41-4afd-42f6-ab7b-5338ae09b2fb.png
    :height: 150

.. note::
    The configuration is managed through the included environment file in the /host_vars folder.
    (``nethermind.env``)

For additional information see `Nethermind official docs <https://docs.nethermind.io/nethermind/>`_

Deployment Vars
---------------

Secrets
*******

``nethermind_jwt_secret``:
    * Optional
    * Needs to be the same as the jwt secret used by the consensus layer (Lodestar, Prysm, Nimbus, etc.)

Host variables
**************

``nethermind_base_config``:
    * Optional, default to ``mainnet``
    * Reflects the default configuration file `distributed with nethermind <https://github.com/NethermindEth/nethermind/tree/master/src/Nethermind/Nethermind.Runner/configs>`_. 
    * Additional configurations to be made through ENVIRONMENT variables.
