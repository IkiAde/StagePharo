Class {
	#name : #SparseMatrix,
	#superclass : #Object,
	#instVars : [
		'rows',
		'columns',
		'values'
	],
	#category : #Exercice1
}

{ #category : #'instance creation' }
SparseMatrix class >> rows: r columns: c [ 
    ^self new
        rows: r;
        columns: c;
        values: Dictionary new
]

{ #category : #accessing }
SparseMatrix >> addColumn: aColumn [
	columns add: aColumn
]

{ #category : #accessing }
SparseMatrix >> addRow: aRow [
	rows add: aRow
]

{ #category : #accessing }
SparseMatrix >> addValueAt: rowIndex column: colIndex data: aData [

	|key| 
	key:= rowIndex asString, '-' , colIndex asString.
	values at: key put: aData 
]

{ #category : #accessing }
SparseMatrix >> columns [ 
	^columns
]

{ #category : #accessing }
SparseMatrix >> columns: c [ 
	columns:= c
]

{ #category : #accessing }
SparseMatrix >> fromSimpleMatrix: aSimpleMatrix [ 
    rows := OrderedCollection new.
    columns := OrderedCollection new.
    values := Dictionary new.
    
    aSimpleMatrix withIndexDo: [ :row :rowIndex |
        row withIndexDo: [ :value :columnIndex |
            value = 0 ifFalse: [
                self addRow: rowIndex - 1.
                self addColumn: columnIndex - 1.
                self addValueAt: rowIndex - 1 column: columnIndex - 1 data: value.
            ]
        ]
    ].


]

{ #category : #initialization }
SparseMatrix >> initialize [
	 super initialize.
    rows := OrderedCollection new.
    columns := OrderedCollection new.
    values := Dictionary new.
]

{ #category : #accessing }
SparseMatrix >> printString [ 
    ^ values printString


]

{ #category : #accessing }
SparseMatrix >> rows [
	^rows
]

{ #category : #accessing }
SparseMatrix >> rows: r [ 
	rows:=r
]

{ #category : #accessing }
SparseMatrix >> toTraditionalMatrix [
    | maxRow maxCol traditionalMatrix |
    maxRow := rows max + 1.
    maxCol := columns max + 1.
    traditionalMatrix := Array new: maxRow.
    traditionalMatrix := (1 to: maxRow) collect: [ :i |
        | row |
        row := Array new: maxCol.
        row := (1 to: maxCol) collect: [ :j | 0 ].
        row
    ].
    1 to: values size do: [ :i |
        | rowIndex colIndex |
        rowIndex := (rows at: i) + 1.
        colIndex := (columns at: i) + 1.
        (traditionalMatrix at: rowIndex) at: colIndex put: (values at: i)
    ].
    ^ traditionalMatrix



]

{ #category : #accessing }
SparseMatrix >> valueAt: rowIndex column: colIndex [ 

	|key|
	key:= rowIndex asString, '-' , colIndex asString.
	^ values at: key ifAbsent: 0 
]

{ #category : #accessing }
SparseMatrix >> values [
	^values 
]

{ #category : #accessing }
SparseMatrix >> values: v [ 
	values:= v
]
