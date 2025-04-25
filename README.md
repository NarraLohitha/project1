# MySQL Backup Automation using Ansible, Jenkins, and Git

## Technologies Used
- Jenkins
- Ansible
- MySQL
- GitHub
- Shell Scripting

## How it Works
1. Jenkins pulls this repo from GitHub.
2. Jenkins executes Ansible playbook.
3. Ansible copies and runs a shell script on the MySQL server.
4. Script performs a `mysqldump` and saves the backup in `/var/backups/mysql/`.

## To Use:
- Update MySQL credentials in `db_backup.sh`
- Update remote server IP in `ansible/hosts`
- Make sure SSH access is enabled
- Set up Jenkins pipeline to use the included `Jenkinsfile`


