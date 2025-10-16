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
MyPieceTest >> testBlackConstructor [
	
	self assert: MyPiece black color isBlack
]

{ #category : 'tests' }
MyPieceTest >> testWhiteConstructor [
	
	self assert: MyPiece white color negated isBlack 
]
