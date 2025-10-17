Class {
	#name : 'MyPawnTest',
	#superclass : 'TestCase',
	#category : 'Myg-Chess-Tests',
	#package : 'Myg-Chess-Tests'
}

{ #category : 'tests' }
MyPawnTest >> testPawnCanDoEnPassantMove [
	"This test should check that if a pawn is in front of an other pawn in cannot eat him"

	| pawnBlack pawnWhite board |
	board := MyChessBoard empty.
	board at: 'd7' put: (pawnBlack := MyPawn black).
	pawnBlack moveTo: (board at: 'd5').
	"Put an atacker pawn in front of our pawn (r u ready for a fight ? No)"
	board at: 'e5' put: (pawnWhite := MyPawn white).
	self assert:
		((pawnWhite legalTargetSquares collect: #name) includes: 'd4')
]

{ #category : 'tests' }
MyPawnTest >> testPawnCanEatInDiagonal [
	"This test should check that if a pawn is in front of an other pawn in cannot eat him"

	| pawn board |
	board := MyChessBoard empty.
	board at: 'e4' put: (pawn := MyPawn white).
	"Put an atacker pawn in front of our pawn (r u ready for a fight ? No)"
	pawn legalTargetSquares.
	board at: 'f5' put: MyPawn black.
	self assert:
		((pawn legalTargetSquares collect: #name) includes: 'f5')
]

{ #category : 'tests' }
MyPawnTest >> testPawnCanMoveTwoSquaresAtTheFirstMove [
	"This test should check that a pawn can move forward, one square at a time and except for their first movement."
	| pawn board |
	board := MyChessBoard empty.
	board at: 'e4' put: (pawn := MyPawn white).

	"Check at first you can do 2 squares move"
	self assertCollection: pawn legalTargetSquares hasSameElements: (#(e5 e6) collect: [:name|board at: name ]).
]

{ #category : 'tests' }
MyPawnTest >> testPawnCantEatInDiagonalIfThePieceIsTheSameColor [
	"This test should check that if a pawn is in front of an other pawn in cannot eat him"

	| pawn board |
	board := MyChessBoard empty.
	board at: 'e4' put: (pawn := MyPawn white).
	"Put an atacker pawn in front of our pawn (r u ready for a fight ? No)"
	pawn legalTargetSquares.
	board at: 'f5' put: MyPawn white.
	self assert:
		((pawn legalTargetSquares collect: #name) includes: 'f5') not
]

{ #category : 'tests' }
MyPawnTest >> testPawnChangeHisFirstMoveStateToFalse [
	"This test should check that a pawn can move forward, one square at a time and except for their first movement."
	| pawn board |
	board := MyChessBoard empty.
	board at: 'e4' put: (pawn := MyPawn white).
	"Check at first you can do 2 squares move"
	"do one move"
	pawn moveTo: 'e5'.
	"Check now you can only do 1 square move"
	self assert: pawn isFirstMove not.
]

{ #category : 'tests' }
MyPawnTest >> testPawnChangeHisFirstMoveStateToTrueIfIllegal [
"Ce test s'assure que lorsqu'un pion effectue un mouvement non autorisé n'affecte pas le statut du pion"
	| pawn board |
	board := MyChessBoard empty.
	board at: 'e4' put: (pawn := MyPawn white).
	"Check at first you can do 2 squares move"
	"do one move"
	pawn moveTo: (board at: 'e4').
	"Check now you can only do 1 square move"
	self assert: pawn isFirstMove.
]

{ #category : 'tests' }
MyPawnTest >> testPawnCouldMoveOneSquareAfterTheFirstMove [
	"This test should check that a pawn can move forward, one square at a time and except for their first movement."
	| pawn board |
	board := MyChessBoard empty.
	board at: 'e4' put: (pawn := MyPawn white).
	"do one move instead of 2 for the first"
	pawn moveTo: (board at: 'e5').
	"Now you can only do 1 square on the next move"
	self assertCollection: pawn legalTargetSquares hasSameElements: (#(e6)collect: [:name|board at: name ]) .
]

{ #category : 'tests' }
MyPawnTest >> testPawnCouldNotEatInFrontOfHim [
	"This test should check that if a pawn is in front of an other pawn in cannot eat him"
	| pawn board |
	board := MyChessBoard empty.
	board at: 'e4' put: (pawn := MyPawn white).

	"Put an atacker pawn in front of our pawn (r u ready for a fight ? No)"
	board at: 'e5' put: MyPawn black.

	self assert: (pawn legalTargetSquares isEmpty) 
	
]

{ #category : 'tests' }
MyPawnTest >> testPawnShouldNotThrowExceptionIfADiagonalSquareIsEmpty [
	"This test should check that if a pawn is in front of an other pawn in cannot eat him"

	| pawn board |
	board := MyChessBoard empty.
	board at: 'a4' put: (pawn := MyPawn white).
	"Put an atacker pawn in front of our pawn (r u ready for a fight ? No)"
	pawn legalTargetSquares.
]
