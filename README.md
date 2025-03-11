# API TypeScript - Express

Description

Ce projet est une API en TypeScript utilisant Express. L'API expose une route /ping qui retourne les headers de la requête, et toutes les autres routes renvoient une réponse 404 avec un corps vide.

## Prérequis

Avant de commencer, assurez-vous d'avoir installé :

Node.js

Typescript :

npm install typescript

## Cloner le projet

git clone https://github.com/SmlDreams/Devops.git
cd Devops

# Installer les dépendances

install express : 

```
npm install express
```

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
