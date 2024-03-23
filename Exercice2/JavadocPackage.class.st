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

{ #category : #'as yet unclassified' }
JavadocPackage >> generateDocumentationForPackage: packageName [ 
    | package doc |

    package := RPackageOrganizer default packageNamed: packageName ifAbsent: [ ^ 'Le package n''existe pas' ].
    doc := String new.
    package classes do: [ :eachClass | 
        doc := doc , (self generateDocumentationForClass: eachClass), String cr.
    ].

    ^ doc
]

{ #category : #'as yet unclassified' }
JavadocPackage >> generateMethodDocumentationForClass: aClass [ 
    | methodDocumentation |

    methodDocumentation := String new.
    aClass selectors do: [ :selector |
        | method |
        method := aClass compiledMethodAt: selector.
        methodDocumentation := methodDocumentation, 'Méthode: ', selector asString, String cr.
        methodDocumentation := methodDocumentation, 'Senders: ', (SystemNavigation new allCallsOn: method selector) asString, String cr.
    ].

    ^ methodDocumentation

]
