# gis-devenv

## Exemple d'un environnement de développement docker pour SIG OpenSource

#### - Postgresql/Postgis
#### - PHP
#### - Nginx
#### - geoserver

### Installation:
- Nécessite Docker 18.06.0+ https://www.docker.com/ 
- Voir Docker For Windows ou Docker Toolbox pour Windows ou https://get.docker.com/ pour Linux
- Nécessite aussi le CLI docker-compose 1.23+

### Lancer l'environnment:
- docker-compose build
- docker-compose up

### SSL:
- Ajouter "127.0.0.1 demo.local" au fichier host
- Ajouter docker/nginx/rootCA.pem à la liste des CA de confiance du navigateur
