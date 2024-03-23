Class {
	#name : #TestJavadocPackage,
	#superclass : #TestCase,
	#category : #Exercice2
}

{ #category : #tests }
TestJavadocPackage >> testGenerateDocumentationForClass [ 
    
     | aClass  classDocumentation  javadocPackage|
    javadocPackage := JavadocPackage new.
    aClass := JavadocPackage.
    classDocumentation := javadocPackage generateDocumentationForClass: aClass.
    self assert: classDocumentation isString.

]
