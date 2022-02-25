# Ze Collectionneur

## Setup

Ce projet utilise un environnement Docker en utilisant VScode et l'extension [Remote - Containers](https://marketplace.visualstudio.com/items?itemName=ms-vscode-remote.remote-containers)

Mais il est aussi possible d'utiliser un environnement non containerisé, il suffit juste de définir les variables d'environnement

- `POSTGRES_USER`
- `POSTGRES_PASSWORD`
- `POSTGRES_HOST`

Une fois l'environnement prêt exécutez les commandes `bin/setup` et `bin/rails db:seed`

## Exercice 1

Les requêtes SQL se trouvent dans le dossier [db/queries](db/queries)


## Exercice 2

Pour tester le projet lancez votre server Rails et ouvrez l'url http://localhost:3000/shops
