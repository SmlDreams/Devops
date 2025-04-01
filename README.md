# API TypeScript - Express

Description

Ce projet est une API en TypeScript utilisant Express. L'API expose une route /ping qui retourne les headers de la requête, et toutes les autres routes renvoient une réponse 404 avec un corps vide.

## Prérequis

Avant de commencer, assurez-vous d'avoir installé :

Node.js

installer les dépendances : 

```
npm install
```

## Cloner le projet

git clone https://github.com/SmlDreams/Devops.git
cd Devops

# Démarrage du serveur

```
npx ts-node index.ts
```
# Fonctionnalités

GET /ping : Retourne les headers de la requête sous forme de JSON.

Autres routes : Renvoient une erreur 404 avec un corps vide.

Exemple d'utilisation

Requête :

curl http://localhost:5000/ping

Réponse :

{
  "message": "Pong!",
  "headers": {
    "host": "localhost:5000",
    "user-agent": "curl/7.68.0",
    "accept": "*/*"
  }
}

# Technologies utilisées

TypeScript

Express



# DockerFile simple 

pour build le dockerfile : 

```shell
docker build -t wik-dps-api . 
```

pour lancer le docker file :

```shell
docker run -p 4000:4000 wik-dps-api
```

pour arreter le conteneur : 

```shell
docker ps 
CONTAINER ID   IMAGE               COMMAND              CREATED          STATUS          PORTS                    NAMES
2be720935f00   wik-dps-api   "docker-entrypoint.s…"   14 minutes ago   Up 14 minutes   0.0.0.0:4000->4000/tcp   inspiring_khayyam
docker stop 2be720935f00 
```

# dockerfile multi (arreter le docker pour lancer le deuxième dockerfile)

pour build le dockerfile : 

```shell
docker build -t wik-dps-api-multi -f Dockerfile.multi . 
```

pour lancer le docker file :

```shell
docker run -p 4000:4000 wik-dps-api-multi
```

# dockerfile BONUS

pour le bonus rien de plus simple, 
voilà les étapes :

```shell
cd ./Bonus #il faut être dans le dossier Devops au préalable
docker build -t tiny_counter . 
docker run --rm tiny-counter  
```