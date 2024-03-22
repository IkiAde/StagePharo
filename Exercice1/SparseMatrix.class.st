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

{ #category : 'instance creation' }
SparseMatrix class >> rows: r columns: c [ 
    ^self new
        rows: r;
        columns: c;
        values: Dictionary new
]

{ #category : 'accessing' }
SparseMatrix >> addValueAt: rowIndex column: colIndex data: aData [

	|key| 
	key:= rowIndex asString, '-' , colIndex asString.
	values at: key put: aData 
]

{ #category : 'accessing' }
SparseMatrix >> columns [ 
	^columns
]

{ #category : 'accessing' }
SparseMatrix >> columns: c [ 
	columns:= c
]

{ #category : 'initialization' }
SparseMatrix >> initialize [
	 super initialize.
    rows := OrderedCollection new.
    columns := OrderedCollection new.
    values := Dictionary new.
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
SparseMatrix >> valueAt: rowIndex column: colIndex [ 

	|key|
	key:= rowIndex asString, '-' , colIndex asString.
	^ values at: key ifAbsent: 0 
]

{ #category : 'accessing' }
SparseMatrix >> values [
	^values 
]

{ #category : 'accessing' }
SparseMatrix >> values: v [ 
	values:= v
]
