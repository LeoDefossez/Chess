Class {
	#name : 'MyQueen',
	#superclass : 'MyPiece',
	#category : 'Myg-Chess-Core',
	#package : 'Myg-Chess-Core'
}

{ #category : 'rendering' }
MyQueen >> renderPieceOn: aSquare [

	^ aSquare renderQueen: self
]

{ #category : 'rendering' }
MyQueen >> targetSquares [

	| likeABishop likeARook |
	likeABishop := self upRightDiagonal , self upLeftDiagonal , self downRightDiagonal , self downLeftDiagonal.
	likeARook := self upFile , self downFile , self leftFile , self rightFile.
	^ likeABishop , likeARook
]
