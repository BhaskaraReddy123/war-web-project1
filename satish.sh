---
- name: Install and Start Apache HTTP Server
  hosts: webservers
  become: yes  # Run with elevated privileges (sudo)

  tasks:
    - name: Install Apache
      package:
        name: httpd
        state: present

    - name: Start Apache service
      service:
        name: httpd
        state: started
        enabled: yes

