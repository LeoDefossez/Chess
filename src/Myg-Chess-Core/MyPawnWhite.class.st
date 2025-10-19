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
MyPawnWhite >> nextMoveAheadFromASquare:aSquare [
	^ aSquare up.
]

{ #category : 'as yet unclassified' }
MyPawnWhite >> nextMoveBackWardFromASquare:aSquare [
	"comment stating purpose of instance-side method"
	"scope: class-variables  &  instance-variables"

	^aSquare down.
]
