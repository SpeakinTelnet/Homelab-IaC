Preparation
===========

1. Populate your inventory
--------------------------

| First step is to populate the inventory using the provided ``.inventory/{1-lxc, 2-services, 3-addons, 4-blockchains}`` files.
| Let's say you were to put ``testhost.homelab`` as follow:

.. code-block:: ini

    # .inventory/1-lxc
    [lxc]    
    testhost.homelab

    # .inventory/2-services
    [gitea]
    testhost.homelab

    # .inventory/3-addons
    [ohmyzsh]
    testhost.homelab

This means that ``testhost.homelab`` can be auto-deployed as an lxc on proxmox, will install gitea, and oh-my-zsh 
will be the default shell for the provided users.

2. Prepare a Proxmox Node
-------------------------

In the case that you want to be able to auto-deploy LXC containers on proxmox, you need
to first generate the template folder for the node using the following:

.. code-block:: console

    ansible-playbook playbooks/generate_node.yml -e "node_name=<your_node_name_here>"

This will create a folder like this:

.. code-block:: bash

    proxmox_nodes
    └── your_node_name_here
        ├── .token
        └── main.yml

You can then add your token into the encrypted .token file using:

.. code-block:: console

    ansible-vault edit proxmox_nodes/your_node_name_here/.token

the main.yml file contains the `token id`, `node url`, and the ansible user `public key`. Fill those in as well.

3. Prepare your hosts
---------------------

With the inventory populated you can generate the templates required to deploy your hosts
using the following:

.. code-block:: console

    ansible-playbook playbooks/generate_hostvars.yml

What this does is populate the `host_vars` folder with templates for the various required
variables. In the case of ``testhost.homelab`` showed in step 1 this would create a
folder like so:

.. code-block:: bash

    inventory
    └── host_vars
        └── testhost.homelab
            ├── lxc.yml
            ├── ohmyzsh.yml
            ├── .credentials.yml
            └── files
                └── gitea.app.ini.j2

Fill the content according to the appropriate pages on the left.

.. important::
    
    If you're using multiple services that uses .credentials, only the first template is
    copied over. You can get the content of the others in ``global_files/host_secret_templates``

4. Fill in your global variables
--------------------------------

A file is provided under ``inventory/group_vars/all.yml`` that contains various useful
variables that needs to be filled


``timezone``
    * Required
    * The timezone that will be used on your deployed container or some services

``additional_user_key_pair``
    * Optional
    * dict
    * format: {user: public_ssh_key}
    * users to be added to deployed containers

``ansible_pubkey``
    * Required
    * Public key for the default ansible user. Used to bootstrap lxc container

``default_lxc_image``
    * Required
    * default CT template to deploy lxc container, changing this can and will break the
      work flow but it should be an easy-fix™

``default_netif_config``
    * Required
    * default netif configuration to deploy lxc container  
