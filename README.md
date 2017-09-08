# docker-rclone
**Synchronisation Cloud avec Rclone sur conteneur Docker**
___

08/09/17 - Rclone update 1.37
17/11/16 - Rclone update 1.34
___

Dans un premier temps, il faut générer le fichier de configuration de Rclone. Pour cela, il faut utiliser la commande suivante :
>docker run --rm -it -v /path_to_rclone/rclone.conf:/root/.rclone.conf sjacouty/docker-rclone rclone config

Remplacez "path_to_rclone" par le chemin de votre dossier Rclone.

Ensuite, une fois votre espace cloud configuré, vous pouvez utiliser la commande suivante :
>docker run --rm -v /path_to_rclone/rclone.conf:/root/.rclone.conf -v /dossier_local:/data sjacouty/docker-rclone rclone sync -v nom_cloud:/dossier_distant

_Une petit explication s'impose :_
- dossier_local = le lien absolu du dossier à synchroniser
- dossier_distant = le dossier à utiliser sur le service cloud

Je vous invite à vous rendre sur le site officiel de Rclone pour plus d'explication sur son focntionnement :
http://rclone.org/
