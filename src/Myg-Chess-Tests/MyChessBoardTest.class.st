"
A MyChessBoardTest is a test class for testing the behavior of MyChessBoard
"
Class {
	#name : 'MyChessBoardTest',
	#superclass : 'TestCase',
	#category : 'Myg-Chess-Tests',
	#package : 'Myg-Chess-Tests'
}

{ #category : 'tests' }
MyChessBoardTest >> testAllSquaresUseSameRepresentation [

	| grid first |
	grid := MyChessBoard empty grid.
	first := grid at: 'a1'.
	grid valuesDo: [:sq | self assert: first rendering equals: sq rendering ]
]
