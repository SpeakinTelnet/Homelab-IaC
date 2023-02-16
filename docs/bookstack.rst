Bookstack
=========

.. image:: https://cdn.jsdelivr.net/gh/walkxcode/dashboard-icons/png/bookstack.png


Default User: ``admin@admin.com``

Default Password: ``password``

For additional informations see `Bookstack official docs <https://www.bookstackapp.com/docs/>`_


Deployment Vars
---------------

Secrets
*******

``bookstack_sql_password``: 
    * Auto-generated
    * Should not be changed unless you manually change the password in the SQL database

``bookstack_app_key``:
    * Auto-generated
    * Is equivalent to Laravels' ``php artisan key:generate``
    * Can be changed for another base64 32 character key

Host variables
**************

None required

Group variables
***************

None required
