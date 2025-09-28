# Compte rendu sur le projet Chess

# Liste des classes et utilité 
## Points important : 

- MyChessBoard, MyChessGame, MyChessSquare sont des éléments graphiques étandant BLElement.


## MyChessBoard
C'est une classe qui contient l'ensemble de nos cases (Square)
A quoi la classe sert ? 



Qu'utilise t'elle ? Objet utilisé ?

## MyChessGame
C'est une classe qui gère le jeux et ses éléments. 
A quoi la classe sert ? 



Qu'utilise t'elle ? Objet utilisé ?

## MyChessGame

A quoi la classe sert ? 



Qu'utilise t'elle ? Objet utilisé ?


## MyPiece

A quoi la classe sert ? 
- C'est une abstraction qui est utilisé pour tous les types de pions.Elle est utile pour des comportements par défaut.
- Ne gère pas les éléments graphiques mais seulement les actions de bases.
Qu'utilise t'elle ? Objet utilisé ?
- 
## MyPlayer

### Méthode play
La méthode est apellée par le `MyChessGame>>play` lorsque le bouton play est joué. La méthode s'occupe de faire un des coups possible pour le joueur courrant.
A quoi la classe sert ? 
- 
Qu'utilise t'elle ? Objet utilisé ?
- 
## MySelectedStated
Il s'agit d'un état permettant de savoir si une case est selectionné et si oui laquelle. 
Elle gère le contenu selectionné et ses actions. 
La méthode click on connait la pièce actuelle et la case vers laquelle elle va. 
A quoi la classe sert ? 
- 
Qu'utilise t'elle ? Objet utilisé ?
- 
## MyUnSelectedState
C'est la classe qui va agir lorsqu'aucune case n'est selectionnée.

Méthode click-on utilisé dès qu'on click sur un Square via un event-handler initialiser sur le square.
A quoi la classe sert ? 
- 
Qu'utilise t'elle ? Objet utilisé ?
- 
## MyUnselectedState 

A quoi la classe sert ? 
- 
Qu'utilise t'elle ? Objet utilisé ?
-

# Liste des erreurs repérées : 

## checkMate ne se lance pas - Fix

## Mouvement manuel non indenté - Fix

## Lorsque plus de roi mouvement auto provoque une erreur - Fix

## Les mouvements des pions sont cassé - Fix

## Il est possible de jouer l'équipe que l'on veut peu importe le tour - Fix

## Pas de promotion - Feature

## Losqu'un Square est selectionné vide et clic sur un autre square le mouvement est compté - Fix 
Idée évol : empécher la selection d'un square vide. 

## Lors de la visualisation des coups possibles des cases non jouables sont indiqué - Fix 


