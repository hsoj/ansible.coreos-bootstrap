hsoj.coreos-bootstrap
=========

Role to prepare a CoreOS instance for execution of ansible tasks.

[![Build Status](https://travis-ci.org/hsoj/coreos-bootstrap.svg?branch=master)](https://travis-ci.org/hsoj/coreos-bootstrap)


Requirements
------------

Role should be added to a play which is defined within a playbook after any
roles which run locally and before any roles which are ran on the remote host.

Role Variables
--------------

coreos_channel: "stable"
coreos_exec_path: "/opt"
coreos_cloudconfig_path: "{{ coreos_exec_path }}/cloudconfig"
coreos_pypy_version: "5.3.1"
coreos_pypy_file_name: "pypy2-v{{ coreos_pypy_version }}-linux64"
coreos_pypy_url: "https://bitbucket.org/pypy/pypy/downloads/{{ coreos_pypy_file_name }}.tar.bz2"
coreos_etcd_discovery_url: ""

Example Playbook
----------------

    - hosts: local
      roles:
         - { role: username.rolename, x: 42 }
         
    - hosts: coreos
      gather_facts: false
      roles:
        - { role: hsoj.coreos-bootstrap, coreos_channel: "stable" }
    
    - hosts: servers
      roles:
        - { role: username.role-name }

License
-------

BSD

Author Information
------------------

Joshua Bell - <josh@outsideorbit.com>
