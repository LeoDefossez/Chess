Class {
	#name : 'MyKingTest',
	#superclass : 'TestCase',
	#category : 'Myg-Chess-Tests',
	#package : 'Myg-Chess-Tests'
}

{ #category : 'tests' }
MyKingTest >> testBasicTestSquares3Possibilities [

	| king board |
	board := MyChessBoard empty.
	board at: 'a1' put: (king := MyKing white).

	self assert: king basicTargetSquares size equals: 3
]

{ #category : 'tests' }
MyKingTest >> testBasicTestSquares5Possibilities [

	| king board |
	board := MyChessBoard empty.
	board at: 'b1' put: (king := MyKing white).

	self assert: king basicTargetSquares size equals: 5
]

{ #category : 'tests' }
MyKingTest >> testBasicTestSquares8Possibilities [

	| king board |
	board := MyChessBoard empty.
	board at: 'e4' put: (king := MyKing white).

	self assert: king basicTargetSquares size equals: 8
]

{ #category : 'tests' }
MyKingTest >> testBasicTestSquaresCheck8Possibilities [

	| king board |
	board := MyChessBoard empty.
	board at: 'e4' put: (king := MyKing white).
	
	self assertCollection: (king basicTargetSquares collect:[:sq | sq name]) hasSameElements: {'e3'. 'e5'. 'd3'.'d4'. 'd5'. 'f3'.'f4'. 'f5'}  
]

{ #category : 'tests' }
MyKingTest >> testIsCheckByOpponentsRook [

	| king board |
	board := MyChessBoard empty.
	board at: 'e4' put: (king := MyKing white).

	"Put an atacker rook on e column"
	board at: 'e1' put: MyRook black.

	self assert: king isInCheck
]

{ #category : 'tests' }
MyKingTest >> testIsNotCheckBySameColorRook [

	| king board |
	board := MyChessBoard empty.
	board at: 'e4' put: (king := MyKing white).

	"Put an same color rook on e column"
	board at: 'e1' put: MyRook white.

	self deny: king isInCheck
]

{ #category : 'tests' }
MyKingTest >> testTargetSquaresCannotEatAlly [


	| king board |
	board := MyChessBoard empty.
	board at: 'e4' put: (king := MyKing white).
	board at: 'e5' put:  MyKing white.
	self
		assertCollection: (king targetSquares collect: [ :sq | sq name ])
		hasSameElements: { 'e3'. 'd3'. 'd4'. 'd5'. 'f3'. 'f4'. 'f5' }
]

{ #category : 'tests' }
MyKingTest >> testTargetSquaresLegalCheck6GoodPositionAnd2Wrong [

	| king board |
	board := MyChessBoard empty.
	board at: 'e4' put: (king := MyKing white).
	board at: 'f6' put: MyKing black.
	self assertCollection: (king targetSquares collect: #name )
		hasSameElements: { 'e3'. 'd3'. 'd4'. 'd5'. 'f3'. 'f4'. }
]

{ #category : 'tests' }
MyKingTest >> testTargetSquaresLegalCheck8Position [

	| king board |
	board := MyChessBoard empty.
	board at: 'e4' put: (king := MyKing white).
	self
		assertCollection: (king targetSquares collect: [ :sq | sq name ])
		hasSameElements: { 'e3'. 'e5'. 'd3'. 'd4'. 'd5'. 'f3'. 'f4'. 'f5' }
]

{ #category : 'tests' }
MyKingTest >> testTargetSquaresLegalCheckNoMoveRemained [

	| king board |
	board := MyChessBoard empty.
	board at: 'a1' put: (king := MyKing white).
	board at: 'a3' put: MyKing black.
	board at: 'c1' put: MyKing black.
	self assertEmpty: (king targetSquares).
]
