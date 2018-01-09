<!---
IMPORTANT
=========
This README.md is displayed in the WebStore as well as within Jarvis app
Please do not change the structure of this file
Fill-in Description, Usage & Author sections
Make sure to rename the [en] folder into the language code your plugin is written in (ex: fr, es, de, it...)
For multi-language plugin:
- clone the language directory and translate commands/functions.sh
- optionally write the Description / Usage sections in several languages
-->
## Description
Lance une musique depuis Youtube (UNIQUEMENT LE SON, pas besoin d'écran)
Les données sont reccueillies avec l'API du site Youtube.

La tâche est lancée en fond de sorte à pouvoir utiliser Jarvis durant la lecture de la musique.

## Configuration
Pour utiliser le plugin il vous suffit d'ajouter la clé api dans le fichier config (+ activation dans Google Cloud Platform de Youtube Data api v3)

## Prérequis
Il vous faut installer VLC afin de pouvoir utiliser ce plugin.

## Usage
```
moi: lance la musique les lacs du connemara
jarvis: Je lance la musique KIDS UNITED – Les lacs du Connemara (SARDOU et nous…)

moi: stop la musique #pour arrêter la musique
```

## Author
[Shinix](https://www.shinix.me)
