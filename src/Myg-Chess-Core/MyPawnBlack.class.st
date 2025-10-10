Class {
	#name : 'MyPawnBlack',
	#superclass : 'MyPawn',
	#category : 'Myg-Chess-Core',
	#package : 'Myg-Chess-Core'
}

{ #category : 'initialization' }
MyPawnBlack >> initialize [
	super initialize. 
	color:= Color black.
	
]

{ #category : 'as yet unclassified' }
MyPawnBlack >> nextMoveAhead:aSquare [
	^ aSquare down.
]
