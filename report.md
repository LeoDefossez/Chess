# Compte rendu sur le projet Chess

# Liste des classes et utilité 

## Seuls documentations: Points d'entrées
1) un point d'entrée dans le commentaire de classe de MyChessGame
2) Point d'entrées pour MyFENParser et MyPNGPaser

## Classes clées:
- MyChessGame (Pour le jeu)
- BlSpace (Pour l'affichage)

## Points important : 
- Une très petite partie du code est tester: certaines sous classes de MyPiece et quelques méthodes de MyFENParser
- Un certain nombre de méthode appelées ne sont pas implémentée, et un certain nombre de méthodes ne sont jamais appelées.
- MyChessBoard, MyChessGame, MyChessSquare sont des éléments graphiques étandant BLElement.


## MyChessBoard
C'est une classe qui contient l'ensemble de nos cases (Square).

Nous avons pu remarqué l'utilisation d'un pattern de state, entre MyChessBoard et MySelectedState/MyUnselectedState, pour définir si un square est séléctionner et lequel.

## MyChessGame
C'est une classe qui gère le jeux et ses éléments. 

## MyChessSquare
C'est une classe qui gère chacune des cases. 

Nous avons pu remarqué l'utilisation d'un visiteur entre MyChessSquare et MyPiece, avec la méthode renderPieceOn:.


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

## MyFENGame
Cette classe offre une configuration par défault pour l'initialisation du object MyChessGame.

## MyFENParser
Cette classe permet de parser une chaine de caractères pour en créer un object MyFENGame.

## MyPGNParser
Cette classe n'est jamais référencée dans le code. Mais elle semble être utile pour l'historique des coup jouées.

## MyPGNTag
Cette classe semble être une classe utilitaire pour MyPGNParser.
