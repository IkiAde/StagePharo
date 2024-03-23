Class {
	#name : #JavadocPackage,
	#superclass : #Object,
	#category : #Exercice2
}

{ #category : #'as yet unclassified' }
JavadocPackage >> javadocForClass: aClass [
	| doc |
	doc := String new.
	doc := doc, 'The class ', aClass name, ' has: ', String cr.
	doc := doc, '- Superclass: ', aClass superclass name, String cr. 
	doc := doc , '- Subclasses: ', (aClass subclasses ifEmpty: ['"There is no subclasses"'] ifNotEmpty: [ aClass subclasses do:[ :aSubclass | 
		doc := doc , aSubclass name, String cr.] ] ), String cr. 
	doc := doc , '-Instances variables: ', (aClass allInstVarNames ifEmpty: ['"There is no instances variables"'] ifNotEmpty: [ aClass allInstVarNames asString] ) ,  String cr.
	doc := doc, 'and Methods:', String cr.
	aClass methodDictionary ifEmpty: [doc := doc, '"There is no methods"'] ifNotEmpty: [ aClass methodDictionary valuesDo: [:method |
		doc := doc, '- ', method selector, String cr. ].] .
	
	^doc
]
