#!/bin/bash

BASE_PATH="/media/minion/data"

NEXTCLOUD_APP_DATA="$BASE_PATH/nextcloud/app"
NEXTCLOUD_USER_DATA="$BASE_PATH/nextcloud/data"
NEXTCLOUD_DB_DATA="$BASE_PATH/nextcloud/db"

MYSQL_ROOT_PASSWORD="changeThisRootPassword"
MYSQL_PASSWORD="changeThisPassword"

export NEXTCLOUD_APP_DATA=$NEXTCLOUD_APP_DATA
export NEXTCLOUD_USER_DATA=$NEXTCLOUD_USER_DATA
export NEXTCLOUD_DB_DATA=$NEXTCLOUD_DB_DATA
export MYSQL_ROOT_PASSWORD=$MYSQL_ROOT_PASSWORD
export MYSQL_PASSWORD=$MYSQL_PASSWORD

echo "export NEXTCLOUD_APP_DATA=$NEXTCLOUD_APP_DATA" >> ~/.bashrc
echo "export NEXTCLOUD_USER_DATA=$NEXTCLOUD_USER_DATA" >> ~/.bashrc
echo "export NEXTCLOUD_DB_DATA=$NEXTCLOUD_DB_DATA" >> ~/.bashrc
echo "export MYSQL_ROOT_PASSWORD=$MYSQL_ROOT_PASSWORD" >> ~/.bashrc
echo "export MYSQL_PASSWORD=$MYSQL_PASSWORD" >> ~/.bashrc

source ~/.bashrc

mkdir -p $NEXTCLOUD_APP_DATA
mkdir -p $NEXTCLOUD_USER_DATA
mkdir -p $NEXTCLOUD_DB_DATA

echo "NEXTCLOUD_APP_DATA: $NEXTCLOUD_APP_DATA"
echo "NEXTCLOUD_USER_DATA: $NEXTCLOUD_USER_DATA"
echo "NEXTCLOUD_DB_DATA: $NEXTCLOUD_DB_DATA"
