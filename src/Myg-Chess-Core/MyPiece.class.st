Class {
	#name : 'MyPiece',
	#superclass : 'Object',
	#instVars : [
		'color',
		'square'
	],
	#category : 'Myg-Chess-Core',
	#package : 'Myg-Chess-Core'
}

{ #category : 'constants' }
MyPiece class >> black [

	^ self new
		  color: Color black;
		  yourself
]

{ #category : 'constants' }
MyPiece class >> white [

	^ self new
		  color: Color white;
		  yourself
]

{ #category : 'as yet unclassified' }
MyPiece >> attackingSquares [

	^ self targetSquares
]

{ #category : 'as yet unclassified' }
MyPiece >> blocksMovementFor: aColor [

	^ false
]

{ #category : 'path commands' }
MyPiece >> board [

	^ square board
]

{ #category : 'as yet unclassified' }
MyPiece >> canBeCapturedBy: aColor [

	^ self color ~= aColor
]

{ #category : 'accessing' }
MyPiece >> color [

	^ color
]

{ #category : 'accessing' }
MyPiece >> color: aColor [

	color := aColor
]

{ #category : 'rendering' }
MyPiece >> downFile [

	^ square collectSquares: [ :aSquare | aSquare down ] forPieceColor: self color
]

{ #category : 'rendering' }
MyPiece >> downLeftDiagonal [

	^ square collectSquares: [ :aSquare | aSquare down left ] forPieceColor: self color
]

{ #category : 'rendering' }
MyPiece >> downRightDiagonal [

	^ square collectSquares: [ :aSquare | aSquare down right ] forPieceColor: self color
]

{ #category : 'accessing' }
MyPiece >> id [

	^ 'Q'
]

{ #category : 'rendering' }
MyPiece >> isAllyOf: aColor [
	^ self color = aColor
]

{ #category : 'testing' }
MyPiece >> isKing [
	
	^ false
]

{ #category : 'testing' }
MyPiece >> isPiece [
	
	^ true
]

{ #category : 'testing' }
MyPiece >> isWhite [
	
	^ color isBlack not
]

{ #category : 'rendering' }
MyPiece >> leftFile [

	^ square collectSquares: [ :aSquare | aSquare left ] forPieceColor: self color
]

{ #category : 'path commands' }
MyPiece >> moveTo: aSquare [

	(self targetSquares includes: aSquare) ifFalse: [ ^ self ].

	square emptyContents.
	square := aSquare.
	aSquare contents: self
]

{ #category : 'rendering' }
MyPiece >> moveTo: toChessSquare from: fromChessSquare in: aMyChessBoard [

	aMyChessBoard unhighLightTargets: fromChessSquare contents targetSquares.
	aMyChessBoard game move: fromChessSquare contents to: toChessSquare
]

{ #category : 'rendering' }
MyPiece >> rightFile [

	^ square collectSquares: [ :aSquare | aSquare right ]forPieceColor: self color
]

{ #category : 'accessing' }
MyPiece >> square [
	^ square
]

{ #category : 'accessing' }
MyPiece >> square: aMyChessSquare [ 
	
	square := aMyChessSquare
]

{ #category : 'rendering' }
MyPiece >> targetSquares [

	self subclassResponsibility
]

{ #category : 'rendering' }
MyPiece >> upFile [

	^ square collectSquares: [ :aSquare | aSquare up ] forPieceColor: self color
]

{ #category : 'rendering' }
MyPiece >> upLeftDiagonal [

	^ square collectSquares: [ :aSquare | aSquare up left ] forPieceColor: self color
]

{ #category : 'rendering' }
MyPiece >> upRightDiagonal [

	^ square collectSquares: [ :aSquare | aSquare up right ] forPieceColor: self color
]
