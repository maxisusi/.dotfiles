# 🤖 Automated Development Environment
This repos is my current dev environment automatically setup with Ansible Playbook.
My goal is to easily switch from a computer to another and have all my .dotfiles, softwares ready to go.

This environment supports **MacOSX** and **Debian distributions**. (RIP Windows ⚰️)

### 🏁 Starting point
In `/bin` you can run the `.dotfiles` to generate and configure an SSH key for ansible and download
ansible dependencies.

---

### ✨ Add variables
You can create a `value.yml` in the root of the project to add environment variables on the different
configuration files. 

#### Currently used variables
| key           | value          | 
| :------------ |:---------------| 
| git_user_name |""              |
| git_user_email|""              |
| git_user_signinkey|""          |


