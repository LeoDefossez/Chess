"
A MyNilPieceTest is a test class for testing the behavior of MyNilPiece
"
Class {
	#name : 'MyNilPieceTest',
	#superclass : 'TestCase',
	#category : 'Myg-Chess-Tests',
	#package : 'Myg-Chess-Tests'
}

{ #category : 'tests' }
MyNilPieceTest >> testBlocksMovementFor [

	
	self assert: (MyNilPiece new blocksMovementFor: Color black) not
]

{ #category : 'tests' }
MyNilPieceTest >> testCanBeCapturedBy [

	
	self assert: (MyNilPiece new canBeCapturedBy: Color black) not
]
