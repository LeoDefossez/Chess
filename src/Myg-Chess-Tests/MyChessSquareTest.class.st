"
A MyChessSquareTest is a test class for testing the behavior of MyChessSquare
"
Class {
	#name : 'MyChessSquareTest',
	#superclass : 'TestCase',
	#category : 'Myg-Chess-Tests',
	#package : 'Myg-Chess-Tests'
}

{ #category : 'running' }
MyChessSquareTest >> setUp [
	super setUp.

]

{ #category : 'tests' }
MyChessSquareTest >> testRenderBishop [

	self assert: (MyChessSquare black renderBishop: MyBishop black) equals: 'v'.
	self assert: (MyChessSquare black renderBishop: MyBishop white) equals: 'b'.
	self assert: (MyChessSquare white renderBishop: MyBishop black) equals: 'V'.
	self assert: (MyChessSquare white renderBishop: MyBishop white) equals: 'B'.
]

{ #category : 'tests' }
MyChessSquareTest >> testRenderKing [

	self assert: (MyChessSquare black renderKing: MyKing black) equals: 'l'.
	self assert: (MyChessSquare black renderKing: MyKing white) equals: 'k'.
	self assert: (MyChessSquare white renderKing: MyKing black) equals: 'L'.
	self assert: (MyChessSquare white renderKing: MyKing white) equals: 'K'.
]

{ #category : 'tests' }
MyChessSquareTest >> testRenderKnight [
 
	self assert: (MyChessSquare black renderKnight: MyKnight black) equals: 'm'.
	self assert: (MyChessSquare black renderKnight: MyKnight white) equals: 'n'.
	self assert: (MyChessSquare white renderKnight: MyKnight black) equals: 'M'.
	self assert: (MyChessSquare white renderKnight: MyKnight white) equals: 'N'.
	
	
]

{ #category : 'tests' }
MyChessSquareTest >> testRenderNil [

	self assert: (MyChessSquare black renderNil) equals: 'x'.
	self assert: (MyChessSquare white renderNil) equals: 'z'
]

{ #category : 'tests' }
MyChessSquareTest >> testRenderPawn [
 
	self assert: (MyChessSquare black renderPawn: MyPawn black) equals: 'o'.
	self assert: (MyChessSquare black renderPawn: MyPawn white) equals: 'p'.
	self assert: (MyChessSquare white renderPawn: MyPawn black) equals: 'O'.
	self assert: (MyChessSquare white renderPawn: MyPawn white) equals: 'P'.
	
	
]

{ #category : 'tests' }
MyChessSquareTest >> testRenderQueen [

	self assert: (MyChessSquare black renderQueen: MyQueen black) equals: 'w'.
	self assert: (MyChessSquare black renderQueen: MyQueen white) equals: 'q'.
	self assert: (MyChessSquare white renderQueen: MyQueen black) equals: 'W'.
	self assert: (MyChessSquare white renderQueen: MyQueen white) equals: 'Q'
]

{ #category : 'tests' }
MyChessSquareTest >> testRenderRook [

	self assert: (MyChessSquare black renderRook: MyRook black) equals: 't'.
	self assert: (MyChessSquare black renderRook: MyRook white) equals: 'r'.
	self assert: (MyChessSquare white renderRook: MyRook black) equals: 'T'.
	self assert: (MyChessSquare white renderRook: MyRook white) equals: 'R'
]
