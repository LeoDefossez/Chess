"
A MyNilChessSquareTest is a test class for testing the behavior of MyNilChessSquare
"
Class {
	#name : 'MyNilChessSquareTest',
	#superclass : 'TestCase',
	#category : 'Myg-Chess-Tests',
	#package : 'Myg-Chess-Tests'
}

{ #category : 'tests' }
MyNilChessSquareTest >> testAddToDoesntAdd [
	| collection |
	collection:= OrderedCollection new.
	MyNilChessSquare new addTo: collection.
	self assertEmpty: collection.
]
