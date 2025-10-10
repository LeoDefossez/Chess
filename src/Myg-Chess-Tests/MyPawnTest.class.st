Class {
	#name : 'MyPawnTest',
	#superclass : 'TestCase',
	#category : 'Myg-Chess-Tests',
	#package : 'Myg-Chess-Tests'
}

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
	pawn moveTo: 'e4'.
	"Check now you can only do 1 square move"
	self assert: pawn isFirstMove.
]

{ #category : 'tests' }
MyPawnTest >> testPawnCouldMove2SquaresAtFirst [
	"This test should check that a pawn can move forward, one square at a time and except for their first movement."
	| pawn board |
	board := MyChessBoard empty.
	board at: 'e4' put: (pawn := MyPawn white).

	"Check at first you can do 2 squares move"
	self assertCollection: pawn legalTargetSquares hasSameElements: #('e5','e6').
	"do one move"
	pawn moveTo: 'e5'.
	"Check now you can only do 1 square move"
	self assertCollection: pawn legalTargetSquares hasSameElements: #('e6')
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
