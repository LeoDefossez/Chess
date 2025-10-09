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
