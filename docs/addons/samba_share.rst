Samba Share
===========

.. note::
    Includes a configuration file in the /host_vars folder

Deployment Vars
---------------

Secrets
*******

Includes a file to add samba users passwords. Some example random passwords are shown.

Host variables
**************

The following are added to help ansible create the requirements for the configuration file.

``samba_users``:
    * Required
    * Must reflect what is included in the configuration file

``samba_paths``:
    * Required
    * Must reflect what is included in the configuration file


Group variables
***************

Required for the network share

| ``lxc_unprivileged``: false
| ``additional_conf_lines``: "features: mount=nfs;cifs,nesting=1"
