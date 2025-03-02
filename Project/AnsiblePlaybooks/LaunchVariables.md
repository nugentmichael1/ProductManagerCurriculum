# Ensure Accurate Variables on New Launches

## /etc/ansible/group_vars/all.yml
Python Script in Python Scraper needs this controller_ip.
Alertmanager needs email app password. Requires two-factor authentication set-up.
```yml
controller_ip: "3.86.154.231"
alertmanager_email_password: "xxxx xxxx xxxx xxxx"
```

## /etc/hosts
Replace IP addresses.  This is an example.
```
3.86.154.231 controller
44.208.165.195 slave0
54.227.204.51 slave1
3.88.27.254 slave2
```
