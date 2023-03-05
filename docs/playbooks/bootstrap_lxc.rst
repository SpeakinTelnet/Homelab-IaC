Bootstrap LXC containers
========================

.. code-block:: console

    ansible-playbook playbooks/bootstrap_lxc.yml


.. note::
    The bootstrap process will filter out the hosts that can be connected to already.

This could possibly be used on a self-created container/host as long as the host accept
the initial ssh connection from the `root` user.

This playbook does the following:
    * Create the ansible user with his ssh-key
    * Add the ansible user to the sudoer file
    * Create the additional users in the ``inventory/group_vars/all.yml`` file
    * Disallow login for the `root` user
    * Disallow ssh password login, public key only. 
    * Update the container
    * Install docker dependency if required
