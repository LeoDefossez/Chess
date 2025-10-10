Class {
	#name : 'MyPawnWhite',
	#superclass : 'MyPawn',
	#category : 'Myg-Chess-Core',
	#package : 'Myg-Chess-Core'
}

{ #category : 'initialization' }
MyPawnWhite >> initialize [
	super initialize.
	color:= Color white 
]

{ #category : 'as yet unclassified' }
MyPawnWhite >> nextMoveAhead:aSquare [
	^ aSquare up.
]
