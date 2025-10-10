Class {
	#name : 'MyNilChessSquare',
	#superclass : 'Object',
	#category : 'Myg-Chess-Core',
	#package : 'Myg-Chess-Core'
}

{ #category : 'accessing' }
MyNilChessSquare >> = anObject [

	^ self class name = anObject class name
]

{ #category : 'accessing' }
MyNilChessSquare >> addTo: aCollection [

	^ aCollection
]

{ #category : 'accessing' }
MyNilChessSquare >> collectSquares: aFullBlockClosure while: aFullBlockClosure2 forPieceColor: aColor [ 
	
	^ OrderedCollection new
]

{ #category : 'accessing' }
MyNilChessSquare >> contents [

	^ MyNilPiece new
]

{ #category : 'accessing' }
MyNilChessSquare >> down [

	^ self
]

{ #category : 'accessing' }
MyNilChessSquare >> hasPiece [

	^ false
]

{ #category : 'accessing' }
MyNilChessSquare >> highlightTarget [

	^ self
]

{ #category : 'accessing' }
MyNilChessSquare >> left [

	^ self
]

{ #category : 'accessing' }
MyNilChessSquare >> right [

	^ self
]

{ #category : 'accessing' }
MyNilChessSquare >> unhighlightTarget [

	^ self
]

{ #category : 'accessing' }
MyNilChessSquare >> up [

	^ self
]
