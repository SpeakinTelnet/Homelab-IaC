Geth
====

.. image:: https://raw.githubusercontent.com/ethereum/ethereum-org-website/master/src/assets/assets/eth-diamond-black.png
    :height: 150

.. note::
    Includes a configuration file in the /host_vars folder

Go-ethereum (aka Geth) is an Ethereum client built in Go.

For additional information see `Geth official docs <https://geth.ethereum.org/docs>`_

Deployment Vars
---------------

Secrets
*******

``geth_jwt_secret``:
    * Optional
    * Needs to be the same as the jwt secret used by the consensus layer (Lodestar, Prysm, Nimbus, etc.)

Host variables
**************

``geth_network``:
    * Optional, default to ``mainnet``
    * Refer to the official documentation for additional networks
