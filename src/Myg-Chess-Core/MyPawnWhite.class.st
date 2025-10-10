Class {
	#name : 'MyPawnWhite',
	#superclass : 'MyPawn',
	#category : 'Myg-Chess-Core',
	#package : 'Myg-Chess-Core'
}

{ #category : 'initialization' }
MyPawnWhite >> initialize [ 
	"comment stating purpose of instance-side method"
	"scope: class-variables  &  instance-variables"

	color:= Color white 
]

{ #category : 'as yet unclassified' }
MyPawnWhite >> nextMoveAhead [ 
	"comment stating purpose of instance-side method"
	"scope: class-variables  &  instance-variables"

	^ square up
]
