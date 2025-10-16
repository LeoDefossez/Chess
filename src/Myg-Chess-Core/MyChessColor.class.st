Class {
	#name : 'MyChessColor',
	#superclass : 'Object',
	#category : 'Myg-Chess-Core',
	#package : 'Myg-Chess-Core'
}

{ #category : 'comparing' }
MyChessColor class >> = aPieceColor [

	^ self name = aPieceColor name
]

{ #category : 'testing' }
MyChessColor class >> isBlack [

	^ false
]

{ #category : 'testing' }
MyChessColor class >> isWhite [

	^ false
]
