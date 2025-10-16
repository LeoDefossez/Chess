Class {
	#name : 'MyChessBasicRendering',
	#superclass : 'Object',
	#instVars : [
		'knightRendering'
	],
	#category : 'Myg-Chess-Core',
	#package : 'Myg-Chess-Core'
}

{ #category : 'initialization' }
MyChessBasicRendering >> initialize [

	super initialize.
	
	self initializeKnightRendering.
	
	
]

{ #category : 'initialization' }
MyChessBasicRendering >> initializeKnightRendering [

	| blackSquare whiteSquare |
	blackSquare := Dictionary new
		               at: Color black put: 'm';
		               at: Color white put: 'n';
		               yourself.
	whiteSquare := Dictionary new
		               at: Color black put: 'M';
		               at: Color white put: 'N';
		               yourself.
	knightRendering := Dictionary new
		                   at: Color black put: blackSquare;
		                   at: Color white put: whiteSquare;
		                   yourself
]

{ #category : 'initialization' }
MyChessBasicRendering >> renderKnight: aMyKnight on: aMyChessSquare [

	^ (knightRendering at: aMyChessSquare color) at: aMyKnight color
]
