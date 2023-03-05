Deploy & Update
===============

.. code-block:: console

    ansible-playbook playbooks/main.yml    

The ``main.yml`` playbook serve two functions: Install & Update. Each role will stamp
the host when properly installed and only update afterward.