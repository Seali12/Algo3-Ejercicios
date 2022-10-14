!classDefinition: #StackTest category: 'StackPrimeraParte'!
TestCase subclass: #StackTest
	instanceVariableNames: ''
	classVariableNames: ''
	poolDictionaries: ''
	category: 'StackPrimeraParte'!

!StackTest methodsFor: 'test' stamp: 'IL 10/1/2022 19:24:17'!
test01StackShouldBeEmptyWhenCreated

	| stack |
	
	stack := Stack new.
	
	self assert: stack isEmpty! !

!StackTest methodsFor: 'test' stamp: 'LV 10/6/2022 18:03:29'!
test02StackShouldAddAnElement

	| stack |
	
	stack := Stack new.
	
	stack push: 'Boca'.
	
	self assert: stack isEmpty not! !

!StackTest methodsFor: 'test' stamp: 'LV 10/6/2022 18:04:05'!
test03StackShouldRemoveAnElement

	| stack |
	
	stack := Stack new.
	
	stack push: 'Boca'.
	
	stack pop.
	
	self assert: stack isEmpty.! !

!StackTest methodsFor: 'test' stamp: 'LV 10/6/2022 18:08:45'!
test04StackShouldReturnTheLastElementRemoved

	| stack ultimoElemento |
	
	stack := Stack new.
	
	stack push: 'Boca'.
	stack push: 'Riber'.
	
	ultimoElemento := stack pop.
	
	self assert: (ultimoElemento = 'Riber').

! !

!StackTest methodsFor: 'test' stamp: 'LV 10/6/2022 18:07:10'!
test05StackShouldReturnTheLastElementWithoutRemoveIt
	
	| stack primerElementoDelStack |
	
	stack := Stack new.
	
	stack push: 'Boca'.
	stack push: 'Riber'.
	
	primerElementoDelStack := stack top.
	
	self assert: (primerElementoDelStack = 'Riber').
! !

!StackTest methodsFor: 'test' stamp: 'LV 10/7/2022 16:32:57'!
test06TopShouldReturnErrorIfStackIsEmpty
	
	| stack |
	
	stack := Stack new.
	
	[ stack top.
	self fail ]
		on: Error 
		do: [ :anError | 
			self assert: anError messageText = Stack stackShouldNotBeEmpty.
			self assert: stack isEmpty ]
! !

!StackTest methodsFor: 'test' stamp: 'LV 10/7/2022 16:34:10'!
test07PopShouldReturnErrorIfStackIsEmpty
	
	| stack |
	
	stack := Stack new.
	
	[ stack pop.
	self fail ]
		on: Error 
		do: [ :anError | 
			self assert: anError messageText = Stack stackShouldNotBeEmpty.
			self assert: stack isEmpty ]
! !


!classDefinition: #Stack category: 'StackPrimeraParte'!
Object subclass: #Stack
	instanceVariableNames: 'pila'
	classVariableNames: ''
	poolDictionaries: ''
	category: 'StackPrimeraParte'!

!Stack methodsFor: 'operations' stamp: 'LV 10/6/2022 17:32:22'!
initialize
	
	pila := OrderedCollection new.! !

!Stack methodsFor: 'operations' stamp: 'LV 10/6/2022 17:32:05'!
isEmpty
	
	^(pila isEmpty).! !

!Stack methodsFor: 'operations' stamp: 'LV 10/7/2022 16:12:11'!
pop
	
	(self isEmpty not) ifTrue:[^pila removeLast].
	
	(self isEmpty ) ifTrue: [ self signalErrorStackShouldNotBeEmpty].
	
	
	! !

!Stack methodsFor: 'operations' stamp: 'LV 10/6/2022 17:34:19'!
push: unaOracion
	
	pila add: unaOracion.! !

!Stack methodsFor: 'operations' stamp: 'LV 10/7/2022 16:12:42'!
top
	
	(self isEmpty not) ifTrue:[^pila last ].
	
	(self isEmpty ) ifTrue: [ self signalErrorStackShouldNotBeEmpty].! !


!Stack methodsFor: 'error' stamp: 'LV 10/7/2022 16:27:06'!
signalErrorStackShouldNotBeEmpty

	 self error: self class stackShouldNotBeEmpty.! !

"-- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- "!

!classDefinition: 'Stack class' category: 'StackPrimeraParte'!
Stack class
	instanceVariableNames: 'pila'!

!Stack class methodsFor: 'as yet unclassified' stamp: 'LV 10/7/2022 16:09:15'!
stackShouldNotBeEmpty
	
	^'No se puede consultar o eliminar de una pila vacia'! !
