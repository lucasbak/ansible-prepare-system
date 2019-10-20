# ansible-prepare-system

role to prepare host for installation of HDP services in Renault context
- create physical volume
- create volume group
- create logical volume
- create filesystem
- create dlk user with 1550 uid/gid
- create hadoop group
- enroll FreeIPA client (TODO)
- kernel params
- disable SELINUX
- create iptables rules (TODO)


## Example of playbook

```yml
- hosts: mariadb
  gather_facts: yes
  # serial: 30%
  tags:
   - mariadb
  vars_files:
  - vars/external_vars_ope.yml
  - vaults/vault-pe.yml

  tasks:
  - include_role:
       name: ansible-prepare-system
    vars:
       prepare_fs: True
       prepare_os: True
       vg: data_vg
       pv: /dev/sdb
       lv_usr_dlk_size: 20G
       lv_var_dlk_size: 30G
```

Author


Lucas bakalian
