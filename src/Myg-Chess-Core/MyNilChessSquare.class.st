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
