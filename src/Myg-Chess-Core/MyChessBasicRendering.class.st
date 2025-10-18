"
I define a basic rendering for chess pieces depending on the color of their square and their own color.

Each variable named [..]Rendering follows the structure:
    SquareColor → PieceColor → RenderCharacter

For example, the variable `knightRendering` is a nested dictionary organized as:
    knightRendering
        at: Color black → (Dictionary mapping piece colors to characters for black squares)
        at: Color white → (Dictionary mapping piece colors to characters for white squares)

"
Class {
	#name : 'MyChessBasicRendering',
	#superclass : 'Object',
	#instVars : [
		'knightRendering',
		'bishopRendering',
		'kingRendering',
		'pawnRendering',
		'nilRendering',
		'queenRendering',
		'rookRendering'
	],
	#category : 'Myg-Chess-Core',
	#package : 'Myg-Chess-Core'
}

{ #category : 'initialization' }
MyChessBasicRendering >> initialize [

	super initialize.

	self initializeKnightRendering.
	self initializeBishopRendering.
	self initializeKingRendering.
	self initializePawnRendering.
	self initializeNilRendering.
	self initializeQueenRendering.
	self initializeRookRendering
]

{ #category : 'initialization' }
MyChessBasicRendering >> initializeBishopRendering [

	| blackSquare whiteSquare |
	blackSquare := Dictionary new
		               at: Color black put: 'v';
		               at: Color white put: 'b';
		               yourself.
	whiteSquare := Dictionary new
		               at: Color black put: 'V';
		               at: Color white put: 'B';
		               yourself.
	bishopRendering := Dictionary new
		                   at: Color black put: blackSquare;
		                   at: Color white put: whiteSquare;
		                   yourself
]

{ #category : 'initialization' }
MyChessBasicRendering >> initializeKingRendering [

	| blackSquare whiteSquare |

	blackSquare := Dictionary new
		               at: Color black put: 'l';
		               at: Color white put: 'k';
		               yourself.
	whiteSquare := Dictionary new
		               at: Color black put: 'L';
		               at: Color white put: 'K';
		               yourself.
	kingRendering := Dictionary new
		                   at: Color black put: blackSquare;
		                   at: Color white put: whiteSquare;
		                   yourself
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
MyChessBasicRendering >> initializeNilRendering [

	nilRendering := Dictionary new
		                at: Color black put: 'x';
		                at: Color white put: 'z';
		                yourself
]

{ #category : 'initialization' }
MyChessBasicRendering >> initializePawnRendering [

	| blackSquare whiteSquare |
	blackSquare := Dictionary new
		               at: Color black put: 'o';
		               at: Color white put: 'p';
		               yourself.
	whiteSquare := Dictionary new
		               at: Color black put: 'O';
		               at: Color white put: 'P';
		               yourself.
	pawnRendering := Dictionary new
		                 at: Color black put: blackSquare;
		                 at: Color white put: whiteSquare;
		                 yourself
]

{ #category : 'initialization' }
MyChessBasicRendering >> initializeQueenRendering [

	| blackSquare whiteSquare |
	blackSquare := Dictionary new
		               at: Color black put: 'w';
		               at: Color white put: 'q';
		               yourself.
	whiteSquare := Dictionary new
		               at: Color black put: 'W';
		               at: Color white put: 'Q';
		               yourself.
	queenRendering := Dictionary new
		                  at: Color black put: blackSquare;
		                  at: Color white put: whiteSquare;
		                  yourself
]

{ #category : 'initialization' }
MyChessBasicRendering >> initializeRookRendering [

	| blackSquare whiteSquare |
	blackSquare := Dictionary new
		               at: Color black put: 't';
		               at: Color white put: 'r';
		               yourself.
	whiteSquare := Dictionary new
		               at: Color black put: 'T';
		               at: Color white put: 'R';
		               yourself.
	rookRendering := Dictionary new
		                 at: Color black put: blackSquare;
		                 at: Color white put: whiteSquare;
		                 yourself
]

{ #category : 'initialization' }
MyChessBasicRendering >> renderBishop: aMyBishop on: aMyChessSquare [ 
	
	^ (bishopRendering at: aMyChessSquare color) at: aMyBishop color
]

{ #category : 'initialization' }
MyChessBasicRendering >> renderKing: aMyKing on: aMyChessSquare [ 
	
	^ (kingRendering at: aMyChessSquare color) at: aMyKing color
]

{ #category : 'initialization' }
MyChessBasicRendering >> renderKnight: aMyKnight on: aMyChessSquare [

	^ (knightRendering at: aMyChessSquare color) at: aMyKnight color
]

{ #category : 'initialization' }
MyChessBasicRendering >> renderNilOn: aMyChessSquare [ 
	^ nilRendering at: aMyChessSquare color
]

{ #category : 'initialization' }
MyChessBasicRendering >> renderPawn: aMyPawn on: aMyChessSquare [

	^ (pawnRendering at: aMyChessSquare color) at: aMyPawn color
]

{ #category : 'initialization' }
MyChessBasicRendering >> renderQueen: aMyQueen on: aMyChessSquare [

	^ (queenRendering at: aMyChessSquare color) at: aMyQueen color
]

{ #category : 'initialization' }
MyChessBasicRendering >> renderRook: aMyRook on: aMyChessSquare [

	^ (rookRendering at: aMyChessSquare color) at: aMyRook color
]
