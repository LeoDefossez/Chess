Class {
	#name : 'MyPawn',
	#superclass : 'MyPiece',
	#instVars : [
		'isFirstMove'
	],
	#category : 'Myg-Chess-Core',
	#package : 'Myg-Chess-Core'
}

{ #category : 'accessing' }
MyPawn >> id [

	^ 'P'
]

{ #category : 'initialization' }
MyPawn >> initialize [

	isFirstMove := true
]

{ #category : 'accessing' }
MyPawn >> isFirstMove [
	^isFirstMove
]

{ #category : 'path commands' }
MyPawn >> moveTo: aSquare [

	super moveTo: aSquare.
	isFirstMove := false
]

{ #category : 'rendering' }
MyPawn >> renderPieceOn: aSquare [ 
	
	^ aSquare renderPawn: self
]

{ #category : 'rendering' }
MyPawn >> targetSquaresLegal: aBoolean [
	|col|
	col:= OrderedCollection new.
	self isWhite
		ifTrue: [ 
			col add:  square up.
			self isFirstMove ifTrue:[col add: square up up] 
		]
		ifFalse: [ col add:  square down.
			self isFirstMove ifTrue:[col add: square down down] 
			 ].
		^col select: [ :s |
		  s notNil and: [
			  s hasPiece not]]
]
