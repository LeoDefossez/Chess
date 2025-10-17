Class {
	#name : 'MyPawn',
	#superclass : 'MyPiece',
	#instVars : [
		'isFirstMove',
		'canBeEatEnPassant'
	],
	#classInstVars : [
		'canBeEatEnPassant'
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
MyPawn >> canBeEatEnPassant [
	^ canBeEatEnPassant 
]

{ #category : 'as yet unclassified' }
MyPawn >> getDiagonalTarget [
	|nextMove col|
	nextMove := self nextMoveAhead.
	col:= OrderedCollection new.
	nextMove notNil ifTrue: [ 
				col add: nextMove right.
				col add: nextMove left.	].
	^ col select: [ :s |
		  s notNil and:[
			  s hasPiece and:[ s contents color ~= self color ]]]
	
]

{ #category : 'as yet unclassified' }
MyPawn >> getEnPassantTarget [
	|col|
	col:= OrderedCollection new
			add: self square right;
			add: self square left;
			yourself.
	col:=(col select: [ :s |
		  s notNil and:[
			  s hasPiece and:[ s contents color ~= self color and: s contents canBeEatEnPassant ]]]) collect: [ :s|self nextMoveAhead:s ].
	^col
	
	
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
	canBeEatEnPassant := (self nextMoveAhead: self nextMoveAhead) == aSquare.
	super moveTo: aSquare.
	isFirstMove := false
]

{ #category : 'as yet unclassified' }
MyPawn >> nextMoveAhead [
	"comment stating purpose of instance-side method"
	"scope: class-variables  &  instance-variables"

	^self nextMoveAhead: square 
]

{ #category : 'as yet unclassified' }
MyPawn >> nextMoveAhead:aSquare [
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

	| col nextSquare |
	col := OrderedCollection new.
	nextSquare := self nextMoveAhead.

	nextSquare notNil ifTrue: [
		nextSquare hasPiece ifFalse: [ col add: nextSquare ] ].
	col addAll: self getDiagonalTarget;
		addAll:self getEnPassantTarget.
	self isFirstMove ifTrue: [
			nextSquare hasPiece ifFalse: [
				col add: (self nextMoveAhead: nextSquare) ] ].
	^ col
]
