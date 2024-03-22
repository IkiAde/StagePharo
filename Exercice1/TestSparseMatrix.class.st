Class {
	#name : #TestSparseMatrix,
	#superclass : #TestCase,
	#category : #Exercice1
}

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
