- name: "create multiple files"
  hosts: db
  vars:
          filecontent: "Hello Ansible"
  tasks:
          - name: "create files"
            copy:
                    dest: "{{ item }}"
                    content: "{{ filecontent }}"
            loop:
                    - /tmp/file1
                    - /tmp/file2
                    - /tmp/file3
