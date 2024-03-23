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

{ #category : #tests }
TestJavadocPackage >> testGenerateDocumentationForPackage [ 
   
    | packageName packageDocumentation javadocPackage |
    javadocPackage := JavadocPackage new.
    packageName := 'Collections'.
    packageDocumentation := javadocPackage generateDocumentationForPackage: packageName.
    self assert: packageDocumentation isString. ']' 
]

{ #category : #tests }
TestJavadocPackage >> testGenerateMethodDocumentationForClass [ 

    | aClass methodDocumentation javadocPackage|
    javadocPackage := JavadocPackage new.
    aClass := JavadocPackage .
    methodDocumentation := javadocPackage generateMethodDocumentationForClass: aClass.
    self assert: methodDocumentation isString.
]
