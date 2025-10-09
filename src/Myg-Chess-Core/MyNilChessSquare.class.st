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
MyNilChessSquare >> down [

	^ self
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
MyNilChessSquare >> isNil [
	^true
]

{ #category : 'accessing' }
MyNilChessSquare >> left [

	^ self
]

{ #category : 'accessing' }
MyNilChessSquare >> notNil [

	^ false
]

{ #category : 'accessing' }
MyNilChessSquare >> right [

	^ self
]

{ #category : 'accessing' }
MyNilChessSquare >> up [

	^ self
]
