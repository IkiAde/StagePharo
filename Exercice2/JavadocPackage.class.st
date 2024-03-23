Class {
	#name : #JavadocPackage,
	#superclass : #Object,
	#category : #Exercice2
}

{ #category : #'as yet unclassified' }
JavadocPackage >> generateDocumentationForClass: aClass [ 
    | classDocumentation |

    classDocumentation := String new.
    classDocumentation := classDocumentation, 'Classe: ', aClass name, String cr.
    classDocumentation := classDocumentation, 'Superclasse: ', aClass superclass name, String cr.
    classDocumentation := classDocumentation, 'Sous-classes: ', (aClass subclasses collect: #name) asString, String cr.
    classDocumentation := classDocumentation, 'Variables d''instances: ', (aClass instVarNames joinUsing: ', '), String cr.
    classDocumentation := classDocumentation, 'Méthodes: ', String cr, (self generateMethodDocumentationForClass: aClass), String cr.
    
    ^ classDocumentation

]
