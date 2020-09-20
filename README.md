# Big Data

Individual repo for Insper's 2020.2 Big Data class.

## Setting up the environment.

Use the provided `docker-compose.yaml` file to create a dockerized MySQL server. Change the passwords on it if you want more security.

Open MySQL Workbench, add a new connection as the `root` user on port `33062` (if the `dcoker-compose.yaml` was edited, reflect them here). Open the connection, go to `Server > Users and Privileges` and update the permission for the `megadados` user:
    
- Click `megadados > Administrative Roles`
- Check the box for `DBA`
- Click `Apply`

After that, close the current connection and create a new one as the `megadados` user on port `33062`.
