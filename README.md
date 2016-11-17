# docker-rclone
**Synchronisation Cloud avec Rclone sur conteneur Docker**
___

17/11/16 - Update 1.34 
___

Dans un premier temps, il vous faut générer les fichier de configuration de rclone.
Pour cela, utiliser la commande suivante :
>docker run --rm -it -v /path_to_rclone/rclone.conf:/root/.rclone.conf sjacouty/rclone rclone config

Remplacez évidemment "path_to_rclone" par le chemin absolu de votre dossier rclone

Ensuite, une fois vos espace cloud configurés, vous pouvez utiliser la commande suivante pour synchroniser :
>docker run --rm -v /path_to_rclone/rclone.conf:/root/.rclone.conf -v /dossier-a-sauvegarder:/data sjacouty/rclone rclone sync -v nom_cloud:/dossier_distant

_Une petit explication s'impose :_
- dossier-a-sauvegarder = le lien absolu du dossier à synchroniser
- dossier_distant = le dossier à utiliser sur le service cloud 
