Exercice 2b : pour récupérer l'id SHA d'un commit, j'ai utilisé la commande `git log`. Ensuite pour défaire un commit j'ai utilisé `git reset --soft <SHA>` et on peut constater que le dernier commit n'apparait plus mais il n'est pas supprimé. De ce que j'ai compris : on a juste fait un pas en arrière dans la branche. Mais ça peut impliquer des conflits ou le fait qu'on est plus dans "main" (le mode tête détaché).
