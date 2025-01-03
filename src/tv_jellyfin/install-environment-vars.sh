#!/bin/bash

#This script will define the environment variables in a Ubuntu 22.04 LTS server

# Define base path
BASE_PATH="/media/minion/data"
BASE_PATH_SECOND_DISK="/media/minion/data2"

#Define the variables
# Jellyfin -> config, tvshows, movies, terror_series, terror_movies, family_movies
JELLYFIN_CONFIG="$BASE_PATH/jellyfin/config"
JELLYFIN_TVSHOWS="$BASE_PATH/jellyfin/data/tvshows"
JELLYFIN_MOVIES="$BASE_PATH/jellyfin/data/movies"
JELLYFIN_TERROR_SERIES="$BASE_PATH/jellyfin/data/terror_series"
JELLYFIN_TERROR_MOVIES="$BASE_PATH/jellyfin/data/terror_movies"
JELLYFIN_FAMILY_MOVIES="$BASE_PATH/jellyfin/data/family_movies"
JELLYFIN_SECOND_HDD="$BASE_PATH_SECOND_DISK"

# Radarr -> config, movies, downloads
RADARR_CONFIG="$BASE_PATH/radarr/config"
RADARR_MOVIES="$BASE_PATH/radarr/data/movies"
RADARR_DOWNLOADS="$BASE_PATH/radarr/data/downloads"

# Transmission -> config, downloads
TRANSMISSION_CONFIG="$BASE_PATH/transmission/config"
TRANSMISSION_DOWNLOADS="$BASE_PATH/transmission/data/downloads"

# Jackett -> config, downloads
JACKETT_CONFIG="$BASE_PATH/jackett/config"
JACKETT_DOWNLOADS="$BASE_PATH/jackett/data/downloads"

# Sonarr -> config, tvshows, downloads
SONARR_CONFIG="$BASE_PATH/sonarr/config"
SONARR_TVSHOWS="$BASE_PATH/sonarr/data/tvshows"
SONARR_DOWNLOADS="$BASE_PATH/sonarr/data/downloads"


# Now all previous variables will be exported to the system and defined at bashrc file
export JELLYFIN_CONFIG=$JELLYFIN_CONFIG
export JELLYFIN_TVSHOWS=$JELLYFIN_TVSHOWS
export JELLYFIN_MOVIES=$JELLYFIN_MOVIES
export JELLYFIN_TERROR_SERIES=$JELLYFIN_TERROR_SERIES
export JELLYFIN_TERROR_MOVIES=$JELLYFIN_TERROR_MOVIES
export JELLYFIN_FAMILY_MOVIES=$JELLYFIN_FAMILY_MOVIES

export RADARR_CONFIG=$RADARR_CONFIG
export RADARR_MOVIES=$RADARR_MOVIES
export RADARR_DOWNLOADS=$RADARR_DOWNLOADS

export TRANSMISSION_CONFIG=$TRANSMISSION_CONFIG
export TRANSMISSION_DOWNLOADS=$TRANSMISSION_DOWNLOADS

export JACKETT_CONFIG=$JACKETT_CONFIG
export JACKETT_DOWNLOADS=$JACKETT_DOWNLOADS

export SONARR_CONFIG=$SONARR_CONFIG
export SONARR_TVSHOWS=$SONARR_TVSHOWS
export SONARR_DOWNLOADS=$SONARR_DOWNLOADS

# Now we will add the variables to the bashrc file
echo "export JELLYFIN_CONFIG=$JELLYFIN_CONFIG" >> ~/.bashrc
echo "export JELLYFIN_TVSHOWS=$JELLYFIN_TVSHOWS" >> ~/.bashrc
echo "export JELLYFIN_MOVIES=$JELLYFIN_MOVIES" >> ~/.bashrc
echo "export JELLYFIN_TERROR_SERIES=$JELLYFIN_TERROR_SERIES" >> ~/.bashrc
echo "export JELLYFIN_TERROR_MOVIES=$JELLYFIN_TERROR_MOVIES" >> ~/.bashrc
echo "export JELLYFIN_FAMILY_MOVIES=$JELLYFIN_FAMILY_MOVIES" >> ~/.bashrc

echo "export RADARR_CONFIG=$RADARR_CONFIG" >> ~/.bashrc
echo "export RADARR_MOVIES=$RADARR_MOVIES" >> ~/.bashrc
echo "export RADARR_DOWNLOADS=$RADARR_DOWNLOADS" >> ~/.bashrc

echo "export TRANSMISSION_CONFIG=$TRANSMISSION_CONFIG" >> ~/.bashrc
echo "export TRANSMISSION_DOWNLOADS=$TRANSMISSION_DOWNLOADS" >> ~/.bashrc

echo "export JACKETT_CONFIG=$JACKETT_CONFIG" >> ~/.bashrc
echo "export JACKETT_DOWNLOADS=$JACKETT_DOWNLOADS" >> ~/.bashrc

echo "export SONARR_CONFIG=$SONARR_CONFIG" >> ~/.bashrc
echo "export SONARR_TVSHOWS=$SONARR_TVSHOWS" >> ~/.bashrc
echo "export SONARR_DOWNLOADS=$SONARR_DOWNLOADS" >> ~/.bashrc

# Now we will reload the bashrc file
source ~/.bashrc

# Now we will check if the variables are defined
echo JELLYFIN_CONFIG:$JELLYFIN_CONFIG
echo JELLYFIN_TVSHOWS:$JELLYFIN_TVSHOWS
echo JELLYFIN_MOVIES:$JELLYFIN_MOVIES
echo JELLYFIN_TERROR_SERIES:$JELLYFIN_TERROR_SERIES
echo JELLYFIN_TERROR_MOVIES:$JELLYFIN_TERROR_MOVIES
echo JELLYFIN_FAMILY_MOVIES:$JELLYFIN_FAMILY_MOVIES

echo RADARR_CONFIG:$RADARR_CONFIG
echo RADARR_MOVIES:$RADARR_MOVIES
echo RADARR_DOWNLOADS:$RADARR_DOWNLOADS

echo TRANSMISSION_CONFIG:$TRANSMISSION_CONFIG
echo TRANSMISSION_DOWNLOADS:$TRANSMISSION_DOWNLOADS

echo JACKETT_CONFIG:$JACKETT_CONFIG
echo JACKETT_DOWNLOADS:$JACKETT_DOWNLOADS

echo SONARR_CONFIG:$SONARR_CONFIG
echo SONARR_TVSHOWS:$SONARR_TVSHOWS
echo SONARR_DOWNLOADS:$SONARR_DOWNLOADS

# mkdir of all mentioned env variables paths
mkdir -p $JELLYFIN_CONFIG
mkdir -p $JELLYFIN_TVSHOWS
mkdir -p $JELLYFIN_MOVIES
mkdir -p $JELLYFIN_TERROR_SERIES
mkdir -p $JELLYFIN_TERROR_MOVIES
mkdir -p $JELLYFIN_FAMILY_MOVIES

mkdir -p $RADARR_CONFIG
mkdir -p $RADARR_MOVIES
mkdir -p $RADARR_DOWNLOADS

mkdir -p $TRANSMISSION_CONFIG
mkdir -p $TRANSMISSION_DOWNLOADS

mkdir -p $JACKETT_CONFIG
mkdir -p $JACKETT_DOWNLOADS

mkdir -p $SONARR_CONFIG
mkdir -p $SONARR_TVSHOWS
mkdir -p $SONARR_DOWNLOADS

