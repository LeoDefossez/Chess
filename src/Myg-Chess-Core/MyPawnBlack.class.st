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
MyPawnBlack >> nextMoveAheadFromASquare:aSquare [
	^ aSquare down.
]

{ #category : 'as yet unclassified' }
MyPawnBlack >> nextMoveBackWardFromASquare:aSquare [
	"comment stating purpose of instance-side method"
	"scope: class-variables  &  instance-variables"

	^ aSquare up.
]
