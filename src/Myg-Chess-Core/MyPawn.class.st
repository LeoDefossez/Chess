Class {
	#name : 'MyPawn',
	#superclass : 'MyPiece',
	#instVars : [
		'isFirstMove'
	],
	#category : 'Myg-Chess-Core',
	#package : 'Myg-Chess-Core'
}

{ #category : 'constants' }
MyPawn class >> black [

	"comment stating purpose of class-side method"
	"scope: class-variables  &  class-instance-variables"

	^ MyPawnBlack new
]

{ #category : 'constants' }
MyPawn class >> white [

	"comment stating purpose of class-side method"
	"scope: class-variables  &  class-instance-variables"

	^ MyPawnWhite new
]

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

{ #category : 'as yet unclassified' }
MyPawn >> nextMoveAhead [
	"comment stating purpose of instance-side method"
	"scope: class-variables  &  instance-variables"

	SubclassResponsibility.
]

{ #category : 'rendering' }
MyPawn >> renderPieceOn: aSquare [ 
	
	^ aSquare renderPawn: self
]

{ #category : 'rendering' }
MyPawn >> targetSquaresLegal: aBoolean [
	|col|
	col:= OrderedCollection new.
	col add: self nextMoveAhead.
	
		^col select: [ :s |
		  s notNil and: [
			  s hasPiece not]]
]
