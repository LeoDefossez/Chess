"
A MyPieceTest is a test class for testing the behavior of MyPiece
"
Class {
	#name : 'MyPieceTest',
	#superclass : 'TestCase',
	#category : 'Myg-Chess-Tests',
	#package : 'Myg-Chess-Tests'
}

{ #category : 'tests' }
MyPieceTest >> testBlocksMovementForWithDifferentColors [

	self assert: (MyPiece black blocksMovementFor: Color white) not.
	self assert: (MyPiece black blocksMovementFor: Color white) not
]

{ #category : 'tests' }
MyPieceTest >> testBlocksMovementForWithSameColors [

	self assert: (MyPiece black blocksMovementFor: Color black) not.
	self assert: (MyPiece white blocksMovementFor: Color white) not
]

{ #category : 'tests' }
MyPieceTest >> testCanBeCapturedByWithDifferentColors [

	self assert: (MyPiece black canBeCapturedBy: Color white) .
	self assert: (MyPiece white canBeCapturedBy: Color black)
]

{ #category : 'tests' }
MyPieceTest >> testCanBeCapturedByWithSameColors [

	self assert: (MyPiece black canBeCapturedBy: Color black) not.
	self assert: (MyPiece white canBeCapturedBy: Color white) not
]
