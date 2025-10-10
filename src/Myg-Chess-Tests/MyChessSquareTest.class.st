Class {
	#name : 'MyChessSquareTest',
	#superclass : 'TestCase',
	#category : 'Myg-Chess-Tests',
	#package : 'Myg-Chess-Tests'
}

{ #category : 'tests' }
MyChessSquareTest >> testAddTo [
	self assert: (MyChessSquare new addTo: OrderedCollection new) size equals: 1
]

{ #category : 'tests' }
MyChessSquareTest >> testCollectSquaresWhileWithEnnemieAtTheEndOfPathWithDifferentColor [

	| board square |
	board := MyChessBoard empty.
	square := board at: 'a1'.

	board at: 'a4' put: MyKnight black.
	self
		assertCollection: ((square collectSquares: [ :sq | sq up ] forPieceColor: Color white) collect: #name)
		hasSameElements: { 'a2'. 'a3'. 'a4' }
]

{ #category : 'tests' }
MyChessSquareTest >> testCollectSquaresWhileWithEnnemieAtTheEndOfPathWithSameColor [

	| board square |
	board := MyChessBoard empty.
	square := board at: 'a1'.

	board at: 'a4' put: MyKnight black.
	self assertCollection: ((square collectSquares: #up forPieceColor: Color black) collect: #name) hasSameElements: { 'a2'. 'a3' }
]

{ #category : 'tests' }
MyChessSquareTest >> testPlusGiveANil [
	"The method should return the next neighbourough, or nil if no neighbourgh"
	|board square|
	
	board := MyChessBoard empty.
	square := board at: 'e5'.
	"self assert: (square + (10@10)) equals: MyNilChessSquare new"
	self assert: (square + (10@10)) = MyNilChessSquare new.
]

{ #category : 'tests' }
MyChessSquareTest >> testPlusGiveASquare [
	"The method should return the next neighbourough, or nil if no neighbourgh"
	|board square|
	
	board := MyChessBoard empty.
	square := board at: 'e5'.
	self assert: (square + (2@3)) name equals: 'g8' 
]
