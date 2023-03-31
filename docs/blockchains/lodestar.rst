Lodestar
========

.. image:: https://raw.githubusercontent.com/ChainSafe/lodestar/unstable/assets/lodestar_icon_300.png
    :height: 150

.. note::
    Lodestar includes both `lodestar_beacon` and `lodestar_validator` inventory groups. The beacon can be
    ran as standalone, the validator can't

.. warning::
    Deployment of validator should be made *AFTER* the beacon node is fully synced

Lodestar is an open-source Ethereum Consensus client and Typescript ecosystem, maintained by ChainSafe Systems

For additional information see `Lodestar official docs <https://chainsafe.github.io/lodestar/>`_

Deployment Vars
---------------

Secrets
*******

``lodestar_jwt_secret``:
    * Can be left blank
    * Needs to be the same as the jwt secret used by the execution layer (Geth, Nethermind, Besu, Erigon, etc.)

``lodestar_validator_password``:
    * Password associated with the validator keys
    * Currently set as same password for all keys, modify the role if more is required

Host variables
**************

``lodestar_git_branch``:
    * Optional, default to "stable"
    * Branch to pull from the GitHub repository.

Group variables
***************

None required

Validator Keys
**************

A .keys folder is available in the /host_vars folder to put whatever validator[...].json file your validator will read
from. It it not tracked by git.
