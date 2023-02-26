NFS Share
=========

Deployment Vars
---------------

Secrets
*******

None required

Host variables
**************

.. code-block:: yaml

    nfs_shares:
      - {
        path: /opt/share,
        owner: nobody,
        group: nogroup,
        mode: 0755,
        options: "rw,all_squash,subtree_check",
        target: ["192.168.0.1/24", "192.168.0.1/24"],
      }
      - {
        ...
      }
      - {
        ...
      }


``path``: 
    * Required.
    * Path shared from the remote

``owner``: 
    * Optional.
    * Owner of the remote folder.
    * Default to `nobody`

``group``: 
    * Optional.
    * Group of the remote folder.
    * Default to `nogroup`

``mode``: 
    * Optional.
    * Permissions of the remote folder.
    * Default to `0755`

``options``: 
    * Required.
    * Options to apply for each targets. (`Reference <https://access.redhat.com/documentation/en-us/red_hat_enterprise_linux/5/html/deployment_guide/s1-nfs-server-config-exports>`_)

``target``: 
    * Required.
    * List of subnet who can access the share

Group variables
***************

Required for the network share

| ``lxc_unprivileged``: false
| ``additional_conf_lines``: "features: mount=nfs;cifs,nesting=1"
