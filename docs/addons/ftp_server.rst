FTP Server
===========

.. note::
    Includes a configuration file in the /host_vars folder

Deployment Vars
---------------

Secrets
*******

Includes a file to add users passwords. Some example random passwords are shown.

Host variables
**************

``ftp_users``:
    * Required
    * Must include a field in the .credentials for the password

``ftp_paths``:
    * Optional
    * additional paths for the ftp server. 


Group variables
***************

None Required
