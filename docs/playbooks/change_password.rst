Change password
===============

.. code-block:: console

    ansible-playbook playbooks/change_password.yml

Simple script to change a user password across all the selected hosts. The play will 
ask for the username and password.

Prior to setting the password the various users won't have a password set and won't be
able to use ``sudo`` except for the ansible user.
