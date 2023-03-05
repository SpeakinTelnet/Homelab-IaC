Deploy LXC containers
=====================

.. code-block:: console

    ansible-playbook playbooks/deploy_lxc.yml --ask-become-pass


.. note::
    ``--ask-become-pass`` is only required if you have additional configuration lines
    and your ansible user is not in the proxmox sudoer file.


For additional information see `Proxmox docs <https://pve.proxmox.com/pve-docs/chapter-pct.html#pct_configuration>`_


This script creates the lxc container on the designated proxmox node

You first need to generate the `lxc.yml` host variables file with the 
``generate_hostvars.yml`` playbook. Then fill it according to your requirements.


Host variables
---------------

``node``
    * Required
    * your_node_name_here

``vmid``
    * Required
    * your_container_number_here

``netif_config``
    * Optional
    * Default contained in ``inventory/group_vars/all.yml``

``lxc_image``
    * Optional
    * Default contained in ``inventory/group_vars/all.yml``
    * Must be available on your proxmox host

``core``
    * Optional
    * Default to 2

``disk``
    * Optional
    * Default to "local-lvm:5"

``memory``
    * Optional
    * Default to 1024

``swap``
    * Optional
    * Default to 1024

``node_storage_for_lxc``
    * Optional
    * Default to "local-lvm"

``features``
    * Optional
    * Omit by default

``host_additional_conf_lines``
    * Optional
    * List
    * Omit by default
    * Can be used to add custom lines to the lxc .conf file
    * Serve as a workaround for proxmox token limitation. Only root@pam can
      use certain features (e.g., ``mount=nfs;cifs``)
      