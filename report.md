# Compte rendu sur le projet Chess

# Liste des classes et utilité 
## Points important : 

- MyChessBoard, MyChessGame, MyChessSquare sont des éléments graphiques étandant BLElement.


## MyChessBoard
C'est une classe qui contient l'ensemble de nos cases (Square)

## MyChessGame
C'est une classe qui gère le jeux et ses éléments. 

## MyChessSquare
C'est une classe qui gère chacune des cases. 


## MyPiece

A quoi la classe sert ? 
- C'est une abstraction qui est utilisé pour tous les types de pions.Elle est utile pour des comportements par défaut.
- Ne gère pas les éléments graphiques mais seulement les actions de bases.
Qu'utilise t'elle ? Objet utilisé ?

## MyPlayer

### Méthode play
La méthode est apellée par le `MyChessGame>>play` lorsque le bouton play est joué. La méthode s'occupe de faire un des coups possible pour le joueur courrant.

## MySelectedStated
Il s'agit d'un état permettant de savoir si une case est selectionné et si oui laquelle. 
Elle gère le contenu selectionné et ses actions. 
La méthode click on connait la pièce actuelle et la case vers laquelle elle va. 

## MyUnSelectedState
C'est la classe qui sera utilisée lorsqu'aucune case n'est selectionnée.

Méthode click-on utilisé dès qu'on click sur un Square via un event-handler initialiser sur le square.



