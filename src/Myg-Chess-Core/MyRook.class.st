Class {
	#name : 'MyRook',
	#superclass : 'MyPiece',
	#category : 'Myg-Chess-Core',
	#package : 'Myg-Chess-Core'
}

{ #category : 'accessing' }
MyRook >> id [
	^ 'R'
]

{ #category : 'rendering' }
MyRook >> renderPieceOn: aSquare [

	^ aSquare renderRook: self
]

{ #category : 'rendering' }
MyRook >> targetSquares [

	^ self upFile , self downFile , self leftFile , self rightFile
]
