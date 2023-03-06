SpeakinTelnet Homelab-IaC
=========================

.. image:: https://img.shields.io/badge/License-MIT-blue.svg
   :target: https://lbesson.mit-license.org/

.. image:: https://readthedocs.org/projects/homelab-iac/badge/?version=latest
    :target: https://homelab-iac.readthedocs.io/en/latest/?badge=latest
    :alt: Documentation Status

.. image:: https://img.shields.io/badge/Made%20with-Sphinx-1f425f.svg
   :target: https://www.sphinx-doc.org/


Refer to the `full documentation <https://homelab-iac.readthedocs.io/en/latest/>`_ for in-depth 
explanations.

.. readme-intro-start

Here lies my homelab's infrastructure as code (IaC) written in Ansible. I'm slowly
updating my current setup to be more readable, re-usable, and publicly available.
This here repository is but a blank slate. Another branch will be made available once
I'm done sterilizing my personal setup so you can use it as a filled reference.

.. readme-basic-usage-start

Basic Usage
-----------

Prerequisite
************

For general usage:
  * Ansible user with ssh-key login to the managed system.
    This is auto-generated for lxc created with the provided playbook
  * An ansible vault key. ``ansible.cfg`` uses ``<ansible_root_folder>/.vault_key`` per default.

.. hint::
    Use your favorite password generator to create a strong password  in the .vault_key file.
    This key is used to encrypt the password/credentials/secrets for every services and host
    that requires some.

To auto-deploy lxc containers on proxmox:
  * Ansible user with ssh-key login to the proxmox Host 
  * Token with admin access to create and start the containers


Playbooks
*********

Multiple playbooks are provided to:

  * Populate a local proxmox node folder for configuration and variables purpose.
  * Populate various host_vars folders according to their appropriate services and add-ons. 
  * Auto deploy LXC containers on proxmox
  * Deploy and Update various services (e.g., Gitea, Grafana, Jellyfin, etc) 
    and add-ons (e.g., oh-my-zsh, Samba, etc)
  * Change user password across all hosts

.. readme-basic-usage-end

What's next
-----------

  * Add screenshots and other appealing stuff
  * Continue to add services
  * Add my whole blockchain deployment playbook (geth, nethermind, prysm, lodestar...) 
  * Add other things to add

Donate 
------

If you want to support the work I've put in this repo here's a few of my crypto wallets.
Just know that the best support you could give is a comment or heartfelt thanks so I know
you appreciate it. 

.. _tbl-grid:

+----------------------------------------+--------------------------------------+-----------------------------------------+
| Ethereum and L2s (0x29006...)          | Monero (85tBS7YSrM5...)              | Peercoin (PBzj1ZwMDW...)                |
|                                        |                                      |                                         |
+========================================+======================================+=========================================+
| |EthereumQR|                           | |MoneroQR|                           | |PeercoinQR|                            |
+----------------------------------------+--------------------------------------+-----------------------------------------+

.. |EthereumQR| image:: https://raw.githubusercontent.com/SpeakinTelnet/SpeakinTelnet/master/img/_qrcodes/ethereum.png
  :width: 300
  :alt: EthereumQR

.. |MoneroQR| image:: https://raw.githubusercontent.com/SpeakinTelnet/SpeakinTelnet/master/img/_qrcodes/monero.png
  :width: 300
  :alt: MoneroQR

.. |PeercoinQR| image:: https://raw.githubusercontent.com/SpeakinTelnet/SpeakinTelnet/master/img/_qrcodes/peercoin.png
  :width: 300
  :alt: PeerCoinQR

.. readme-donate-end

* Free software: MIT
* Documentation: https://homelab-iac.readthedocs.io/en/latest/

⊂(▀¯▀⊂)
