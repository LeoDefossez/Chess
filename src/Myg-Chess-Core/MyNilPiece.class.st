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

{ #category : 'testing' }
MyNilPiece >> isAllyOf: aColor [
	^ false
]

{ #category : 'as yet unclassified' }
MyNilPiece >> moveTo: toChessSquare from: fromChessSquare in: aMyChessBoard [

	^ self
]

{ #category : 'rendering' }
MyNilPiece >> renderPieceOn: aMyChessSquare [ 
	^ aMyChessSquare renderNilPiece: self
]

{ #category : 'as yet unclassified' }
MyNilPiece >> targetSquares [

	^ OrderedCollection new
]
