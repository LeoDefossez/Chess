Class {
	#name : 'MyPawnBlack',
	#superclass : 'MyPawn',
	#category : 'Myg-Chess-Core',
	#package : 'Myg-Chess-Core'
}

{ #category : 'initialization' }
MyPawnBlack >> initialize [ 
	"comment stating purpose of instance-side method"
	"scope: class-variables  &  instance-variables"

	 color:= Color black
]

{ #category : 'as yet unclassified' }
MyPawnBlack >> nextMoveAhead [
	"comment stating purpose of instance-side method"
	"scope: class-variables  &  instance-variables"

	^ square down
]
