"
A MyKnightTest is a test class for testing the behavior of MyKnight
"
Class {
	#name : 'MyKnightTest',
	#superclass : 'TestCase',
	#category : 'Myg-Chess-Tests',
	#package : 'Myg-Chess-Tests'
}

{ #category : 'nil' }
MyKnightTest >> testTargetSquaresLegalCheck6GoodPositionAnd2Wrong [

	| knight board |
	board := MyChessBoard empty.
	board at: 'e4' put: (knight := MyKnight white).
	board at: 'h7' put: MyKnight black.
	self assertCollection: (knight targetSquares collect: [ :sq | sq name ]) hasSameElements: { 'd6'. 'f6'. 'c5'. 'g5'. 'd2'. 'f2'. 'c3'. 'g3' }
]

{ #category : 'nil' }
MyKnightTest >> testTargetSquaresLegalCheck8Position [

	| knight board |
	board := MyChessBoard empty.
	board at: 'e4' put: (knight := MyKnight white).
	self
		assertCollection: (knight targetSquares collect: [ :sq | sq name ])
		hasSameElements: { 'd6'. 'f6'. 'c5'. 'g5'. 'd2'. 'f2'. 'c3'. 'g3' }
]
