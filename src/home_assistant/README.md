## Deploy Home Assistant
In order to enable Home Assistant we have to use the following command:

    ```bash
    docker-compose up -d
    ```

    Once Home Assistant is running, execute the following command to install HACS:

    ```bash
    docker exec -it homeassistant bash -c "cd /config && wget -O - https://get.hacs.xyz | bash -"
    ```

    Now that you have installed HACS and restarted Home Assistant, you need to configure it. Follow these steps:

    1. Open your browser and go to the Home Assistant interface (http://localhost:8123).
    2. Go to Settings (the gear icon in the sidebar) -> Devices & Services.
    3. Click the "+ ADD INTEGRATION" button in the bottom right corner.
    4. Search for "HACS" in the search box.
    5. Select HACS when it appears.

    The configuration process will start:

    - You will need to authorize HACS with your GitHub account.
    - You will be redirected to GitHub for authentication.
    - Accept the requested permissions.
    - Return to Home Assistant.

    Once the authorization is complete, HACS will be available in the sidebar.
    The first time you access HACS, you will accept the terms of use and it will download the basic information.

# Update Home Assistant

1. **Backup**: Before performing any updates, it's always advisable to back up your data, especially the persistent volumes and the configurations you're using in Docker (like your `docker-compose.yml` file and environment variables).

2. **Stop and remove the current container**:
   
   First, stop the running containers:
   
   ```bash
   docker-compose down
   ```
   
   Don't worry, this won't delete your data since it's in persistent volumes.
   
3. **Pull the latest image**:
   
   As you're using the `latest` tag in your `docker-compose.yml`, the following command will pull the most recent version of Home Assistant:
   
   ```bash
   docker-compose pull homeassistant
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
   
   Lastly, ensure everything is working properly. Access Home Assistant in your browser and check that the version is the most recent and that all your configurations and settings are intact.
   
This process is pretty standard for most Docker containers. As long as you use persistent volumes (as you are doing), your data should remain safe even if you delete and recreate containers. Good luck with the update!
