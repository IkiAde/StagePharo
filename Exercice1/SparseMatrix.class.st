Class {
	#name : 'SparseMatrix',
	#superclass : 'Object',
	#instVars : [
		'rows',
		'columns',
		'values'
	],
	#category : 'Exercice1',
	#package : 'Exercice1'
}

{ #category : 'accessing' }
SparseMatrix >> columns [ 
	^columns
]

{ #category : 'accessing' }
SparseMatrix >> columns: c [ 
	columns:= c
]

{ #category : 'accessing' }
SparseMatrix >> rows [
	^rows
]

{ #category : 'accessing' }
SparseMatrix >> rows: r [ 
	rows:=r
]

{ #category : 'accessing' }
SparseMatrix >> values [
	^values 
]

{ #category : 'accessing' }
SparseMatrix >> values: v [ 
	values:= v
]
