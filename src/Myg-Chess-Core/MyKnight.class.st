Class {
	#name : 'MyKnight',
	#superclass : 'MyPiece',
	#category : 'Myg-Chess-Core',
	#package : 'Myg-Chess-Core'
}

{ #category : 'accessing' }
MyKnight >> id [
	
	^ 'N'
]

{ #category : 'rendering' }
MyKnight >> renderPieceOn: aSquare [

	^ aSquare renderKnight: self
]

{ #category : 'rendering' }
MyKnight >> targetSquares [

	| result |
	result := OrderedCollection new.
	square right right up addTo: result.
	square right right down addTo: result.
	square left left up addTo: result.
	square left left down addTo: result.
	square up up left addTo: result.
	square up up right addTo: result.
	square down down left addTo: result.
	square down down right addTo: result.

	^ result select: [ :s | s hasPiece not or: [ s contents color ~= color ] ]
]
