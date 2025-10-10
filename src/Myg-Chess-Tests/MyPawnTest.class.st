Class {
	#name : 'MyPawnTest',
	#superclass : 'TestCase',
	#category : 'Myg-Chess-Tests',
	#package : 'Myg-Chess-Tests'
}

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
