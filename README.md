# mpd-snapcast
Dockerized mpd server with snapcast sink (for Synology NAS).

## usage

#### run local with docker
```
    git clone <this repo>
    cd <this repo>
    docker-compose up
```

#### run on synology nas with synology Docker App
1) Add the containers images from the [release page](https://github.com/jonolt/snapcast-mdp-alpine/releases) to the NAS (in the Image Tab).
2) Optinal, edit the config files to your needs.
3) Import the containers using the config files in `./synology_dsm_docker_config` ([here](https://github.com/jonolt/snapcast-mdp-alpine/tree/main/synology_dsm_docker_config)) and the docker containers from the release (in the Container Tab).
4) Start the conatiners.


## notes for myself

#### export releases
```
sudo docker build -t snapserver:0.1 snapserver
sudo docker build -t mpd:0.1 mpd

sudo docker save snapserver:0.1 -o snapserver_0v1.tar
sudo docker save mpd:0.1 -o mpd_0v1.tar
```
