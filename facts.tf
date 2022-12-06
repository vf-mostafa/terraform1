- name: "print facts of all machine"
  hosts: all
  vars:
          filecontent: "Hello Ansible"
  tasks:
          - name: "print ip address"
            debug:
                    msg: "IP address of the machine is {{ ansible_facts['all_ipv4_addresses'] }}"
