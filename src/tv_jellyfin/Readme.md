To update the Jellyfin container (or any other Docker container), there is a standard process that can be followed. Here are the detailed steps:

1. **Backup**: Before performing any updates, it's always advisable to back up your data, especially the persistent volumes and the configurations you're using in Docker (like your `docker-compose.yml` file and environment variables).

2. **Stop and remove the current container**:
   
   First, stop the running containers:
   
   ```bash
   docker-compose down
   ```
   
   Don't worry, this won't delete your data since it's in persistent volumes.
   
3. **Pull the latest image**:
   
   As you're using the `latest` tag in your `docker-compose.yml`, the following command will pull the most recent version of Jellyfin:
   
   ```bash
   docker-compose pull jellyfin
   ```
   
   If you wish to update all services, simply omit the service name:
   
   ```bash
   docker-compose pull
   ```
   
4. **Restart the container with the updated image**:
   
   With the latest image now pulled, you can restart the containers:
   
   ```bash
   docker-compose up -d
   ```
   
   The `-d` flag is to run the containers in the background (detached mode).
   
5. **Verify**:
   
   Lastly, ensure everything is working properly. Access Jellyfin in your browser and check that the version is the most recent and that all your media and settings are intact.
   
This process is pretty standard for most Docker containers. As long as you use persistent volumes (as you are doing), your data should remain safe even if you delete and recreate containers. Good luck with the update!
