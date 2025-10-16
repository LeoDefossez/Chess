"
A MyChessSquareTest is a test class for testing the behavior of MyChessSquare
"
Class {
	#name : 'MyChessSquareTest',
	#superclass : 'TestCase',
	#instVars : [
		'blackSquare',
		'whiteSquare'
	],
	#category : 'Myg-Chess-Tests',
	#package : 'Myg-Chess-Tests'
}

{ #category : 'running' }
MyChessSquareTest >> setUp [

	| rendering |
	super setUp.
	rendering := MyChessBasicRendering new.
	blackSquare := MyChessSquare black rendering: rendering.
	whiteSquare := MyChessSquare white rendering: rendering
]

{ #category : 'tests' }
MyChessSquareTest >> testBasicRenderBishop [

	self assert: (blackSquare renderBishop: MyBishop black) equals: 'v'.
	self assert: (blackSquare renderBishop: MyBishop white) equals: 'b'.
	self assert: (whiteSquare renderBishop: MyBishop black) equals: 'V'.
	self assert: (whiteSquare renderBishop: MyBishop white) equals: 'B'
]

{ #category : 'tests' }
MyChessSquareTest >> testBasicRenderKing [

	self assert: (blackSquare renderKing: MyKing black) equals: 'l'.
	self assert: (blackSquare renderKing: MyKing white) equals: 'k'.
	self assert: (whiteSquare renderKing: MyKing black) equals: 'L'.
	self assert: (whiteSquare renderKing: MyKing white) equals: 'K'.
]

{ #category : 'tests' }
MyChessSquareTest >> testBasicRenderKnight [
 
	self assert: (blackSquare renderKnight: MyKnight black) equals: 'm'.
	self assert: (blackSquare renderKnight: MyKnight white) equals: 'n'.
	self assert: (whiteSquare renderKnight: MyKnight black) equals: 'M'.
	self assert: (whiteSquare renderKnight: MyKnight white) equals: 'N'.
	
	
]

{ #category : 'tests' }
MyChessSquareTest >> testBasicRenderNil [

	self assert: (blackSquare renderNil) equals: 'x'.
	self assert: (whiteSquare renderNil) equals: 'z'
]

{ #category : 'tests' }
MyChessSquareTest >> testBasicRenderPawn [
 
	self assert: (blackSquare renderPawn: MyPawn black) equals: 'o'.
	self assert: (blackSquare renderPawn: MyPawn white) equals: 'p'.
	self assert: (whiteSquare renderPawn: MyPawn black) equals: 'O'.
	self assert: (whiteSquare renderPawn: MyPawn white) equals: 'P'.
	
	
]

{ #category : 'tests' }
MyChessSquareTest >> testBasicRenderQueen [

	self assert: (blackSquare renderQueen: MyQueen black) equals: 'w'.
	self assert: (blackSquare renderQueen: MyQueen white) equals: 'q'.
	self assert: (whiteSquare renderQueen: MyQueen black) equals: 'W'.
	self assert: (whiteSquare renderQueen: MyQueen white) equals: 'Q'
]

{ #category : 'tests' }
MyChessSquareTest >> testBasicRenderRook [

	self assert: (blackSquare renderRook: MyRook black) equals: 't'.
	self assert: (blackSquare renderRook: MyRook white) equals: 'r'.
	self assert: (whiteSquare renderRook: MyRook black) equals: 'T'.
	self assert: (whiteSquare renderRook: MyRook white) equals: 'R'
]
