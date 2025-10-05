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
MyNilChessSquare >> ifNil: nilBlock [ 
	^ nilBlock value
]

{ #category : 'accessing' }
MyNilChessSquare >> ifNil: nilBlock ifNotNil: ifNotNilBlock [
	^ nilBlock value
]

{ #category : 'accessing' }
MyNilChessSquare >> ifNotNil: aBlock [ 
	^ self
]

{ #category : 'accessing' }
MyNilChessSquare >> notNil [

	^ false
]
