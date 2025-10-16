Class {
	#name : 'MyChessBlack',
	#superclass : 'MyChessColor',
	#category : 'Myg-Chess-Core',
	#package : 'Myg-Chess-Core'
}

{ #category : 'testing' }
MyChessBlack class >> isBlack [

	^ true
]

{ #category : 'arithmetic' }
MyChessBlack class >> negated [

	^ MyChessWhite
]
