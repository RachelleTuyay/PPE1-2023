# Journal de bord du projet encadré.

"Lorem ipsum dolor sit amet, consectetur adipiscing elit. Nam fermentum, turpis eget tempor eleifend, tortor sem scelerisque dui, in bibendum velit massa nec massa. Nam posuere tellus efficitur metus pulvinar, ac commodo lacus vehicula. Ut et dolor a eros suscipit maximus. Sed tortor mi, ullamcorper aliquet mollis eget, sodales eu."

## Commandes git : 

- J'ai clôner mon dépot avec la commande : `git clone git@github.com:RachelleTuyay/PPE1-2023.git`
- Après m'être déplacer dans mon dépot j'ai utilisé `git status` pour vérifier si il y a des conflits.
- `vim journal.md` pour modifier mon journal via la console de commande.
- `git commit -m "blablabla"` et `git status` pour vérifier.
- `git tag -a -m "blablabla" seeance2` pour créer le tag "seance2" et je l'ai lié à mon commit "c18f9c9" avec la commande `git tag seance2 c18f9c9`
- une fois le tag créer, je l'ai poussé avec `git push origin seance2`



## Commandes vim : 

- `i` pour le mode Insertion
- `esc` pour sortir du mode Insertion
- `:w` pour écrire
- `:q` pour sortir de vim



### Séance 3 : (exos git more)
"Cette ligne doit rester après correction."

Exercice 2b : pour récupérer l'id SHA d'un commit, j'ai utilisé la commande `git log`. Ensuite pour défaire un commi
t j'ai utilisé `git reset --soft <SHA>` et on peut constater que le dernier commit n'apparait plus mais il n'est pas
 supprimé. De ce que j'ai compris : on a juste fait un pas en arrière dans la branche. Mais ça peut impliquer des co
nflits ou le fait qu'on est plus dans "main" (le mode tête détaché)

<<<<<<< Updated upstream
Correction d'erreurs.
=======
Cette ligne servire pour plus tard.
>>>>>>> Stashed changes

Exercice 4b : 
- `git status` et `git log` pour voir les différents commits.
- `git pull` et donne un message d'erreur "commit les changements ou stash avant de pull"
- `git stash push -m "blablabla"` pour enregistrer le changements dans un stash.
- `git stash list` qui affiche la list des différents stash et dans ce cas il indique : "stash@{0}: on main: "blablabla""
- `git pull` pour récupérer les changements du dépot en ligne; puis `git stash apply` pour appliquer le stash; et `git stash drop` pour supprimer le stash.
- Ensuite pour envoyer vers le dépot en ligne : `git add journal.md` , `git commit -m "blablabla"`, `git push origin main` et `git status` pour vérifier si tout va bien.



