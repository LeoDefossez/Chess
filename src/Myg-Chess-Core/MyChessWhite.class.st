Class {
	#name : 'MyChessWhite',
	#superclass : 'MyChessColor',
	#category : 'Myg-Chess-Core',
	#package : 'Myg-Chess-Core'
}

{ #category : 'testing' }
MyChessWhite class >> isWhite [

	^ true
]

{ #category : 'arithmetic' }
MyChessWhite class >> negated [

	^ MyChessBlack
]
