# Nextcloud Docker Setup

## Initial Setup

1. First, run:
   ```bash
   sudo ./install-environment-vars.sh
   ```

2. IMPORTANT: Edit passwords in script first:
   - Change MYSQL_ROOT_PASSWORD
   - Change MYSQL_PASSWORD

3. Start:
   ```bash
   docker-compose up -d
   ```

4. Access:
   - Go to: http://localhost:8080
   - Create admin account

## Update

1. Backup first
2. Stop:
   ```bash
   docker-compose down
   ```
3. Update:
   ```bash
   docker-compose pull
   ```
4. Start:
   ```bash
   docker-compose up -d
   ```

4. Deployment commands:
```bash
mkdir -p src/nextcloud
chmod +x src/nextcloud/install-environment-vars.sh
sudo ./src/nextcloud/install-environment-vars.sh
cd src/nextcloud
docker-compose up -d
```