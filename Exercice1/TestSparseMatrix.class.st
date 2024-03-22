Class {
	#name : #TestSparseMatrix,
	#superclass : #TestCase,
	#category : #Exercice1
}

{ #category : #tests }
TestSparseMatrix >> testAddValue [
    "Test de l'ajout de valeurs à une matrice creuse"
    | sparseMatrix |
    sparseMatrix := SparseMatrix new.
    sparseMatrix initialize.
    sparseMatrix addValueAt: 1 column: 1 data: 3.
    sparseMatrix addValueAt: 1 column: 5 data: 4.
    sparseMatrix addValueAt: 2 column: 3 data: 5.
    self assert: (sparseMatrix valueAt: 1 column: 1) equals: 3.
    self assert: (sparseMatrix valueAt: 1 column: 5) equals: 4.
    self assert: (sparseMatrix valueAt: 2 column: 3) equals: 5.
]

{ #category : #tests }
TestSparseMatrix >> testInitialization [
    "Test de l'initialisation d'une matrice creuse"
    | sparseMatrix |
    sparseMatrix := SparseMatrix new.
    sparseMatrix initialize.
    self assert: sparseMatrix rows isEmpty.
    self assert: sparseMatrix columns isEmpty.
    self assert: sparseMatrix values isEmpty.

]
