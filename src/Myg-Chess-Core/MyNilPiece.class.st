Class {
	#name : 'MyNilPiece',
	#superclass : 'Object',
	#category : 'Myg-Chess-Core',
	#package : 'Myg-Chess-Core'
}

{ #category : 'as yet unclassified' }
MyNilPiece >> blocksMovementFor: aColor [
	"Is not a real piece, so it does not block movement"

    ^ false 
]

{ #category : 'as yet unclassified' }
MyNilPiece >> canBeCapturedBy: aColor [
	"Is not a real piece, so can never be captured"
	^ false
]

{ #category : 'rendering' }
MyNilPiece >> renderPieceOn: aMyChessSquare [ 
	^ self
]
