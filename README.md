Role Name
=========

Role to prepare a CoreOS instance for execution of ansible tasks.

Requirements
------------

Instance running CoreOS and root access to the instance.

Role Variables
--------------


Example Playbook
----------------

    - hosts: servers
      roles:
         - { role: username.rolename, x: 42 }

License
-------

BSD

Author Information
------------------

Joshua Bell - <josh@outsideorbit.com>
