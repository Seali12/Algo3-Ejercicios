!classDefinition: #OOStackTest category: 'Stack-Exercise'!
TestCase subclass: #OOStackTest
	instanceVariableNames: ''
	classVariableNames: ''
	poolDictionaries: ''
	category: 'Stack-Exercise'!

!OOStackTest methodsFor: 'test' stamp: 'LV 10/13/2022 20:01:32'!
test01StackShouldBeEmptyWhenCreated

	| stack |
	
	stack := OOStack new.
	
	self assert: stack isEmpty! !

!OOStackTest methodsFor: 'test' stamp: 'LV 10/13/2022 20:01:15'!
test02PushAddElementsToTheStack

	| stack |
	
	stack := OOStack new.
	
	stack push: 'something'.
	
	self deny: stack isEmpty! !

!OOStackTest methodsFor: 'test' stamp: 'LV 10/13/2022 20:01:08'!
test03PopRemovesElementsFromTheStack

	| stack |
	
	stack := OOStack new.
	stack push: 'something'.
	
	stack pop.
	
	self assert: stack isEmpty! !

!OOStackTest methodsFor: 'test' stamp: 'LV 10/13/2022 20:01:02'!
test04PopReturnsLastPushedObject

	| stack pushedObject |
	
	stack := OOStack new.
	pushedObject := 'something'.
	
	stack push: pushedObject.
	
	self assert: pushedObject equals: stack pop! !

!OOStackTest methodsFor: 'test' stamp: 'LV 10/13/2022 20:00:57'!
test05StackBehavesLIFO

	| stack firstPushedObject secondPushedObject |
	
	stack := OOStack new.
	firstPushedObject := 'first'.
	secondPushedObject := 'second'.
	
	stack push: firstPushedObject.
	stack push: secondPushedObject.
	
	self assert: secondPushedObject equals: stack pop.
	self assert: firstPushedObject equals: stack pop.
	self assert: stack isEmpty 
	! !

!OOStackTest methodsFor: 'test' stamp: 'LV 10/13/2022 20:00:54'!
test06TopReturnsLastPushedObject

	| stack pushedObject |
	
	stack := OOStack new.
	pushedObject := 'something'.
	
	stack push: pushedObject.
	
	self assert: pushedObject equals: stack top.
	! !

!OOStackTest methodsFor: 'test' stamp: 'LV 10/13/2022 20:00:49'!
test07TopDoesNotRemoveObjectFromStack

	| stack pushedObject |
	
	stack := OOStack new.
	pushedObject := 'something'.
	
	stack push: pushedObject.
	
	self assert: 1 equals: stack size.
	stack top.
	self assert: 1 equals: stack size.
	! !

!OOStackTest methodsFor: 'test' stamp: 'LV 10/13/2022 20:00:46'!
test08CanNotPopWhenThereAreNoObjectsInTheStack

	| stack  |
	
	stack := OOStack new.
	self
		should: [ stack pop ]
		raise: Error - MessageNotUnderstood 
		withExceptionDo: [ :anError |
			self assert: OOStack stackEmptyErrorDescription equals: anError messageText ]
		
! !

!OOStackTest methodsFor: 'test' stamp: 'LV 10/13/2022 20:00:42'!
test09CanNotPopWhenThereAreNoObjectsInTheStackAndTheStackHadObjects

	| stack  |
	
	stack := OOStack new.
	stack push: 'something'.
	stack pop.
	
	self
		should: [ stack pop ]
		raise: Error - MessageNotUnderstood 
		withExceptionDo: [ :anError |
			self assert: OOStack stackEmptyErrorDescription equals: anError messageText ]
		
! !

!OOStackTest methodsFor: 'test' stamp: 'LV 10/13/2022 20:00:35'!
test10CanNotTopWhenThereAreNoObjectsInTheStack

	| stack  |
	
	stack := OOStack new.
	
	self
		should: [ stack top ]
		raise: Error - MessageNotUnderstood 
		withExceptionDo: [ :anError |
			self assert: OOStack stackEmptyErrorDescription equals: anError messageText ]
		
! !


!classDefinition: #OOStackWithTopeTest category: 'Stack-Exercise'!
TestCase subclass: #OOStackWithTopeTest
	instanceVariableNames: ''
	classVariableNames: ''
	poolDictionaries: ''
	category: 'Stack-Exercise'!

!OOStackWithTopeTest methodsFor: 'test' stamp: 'LV 10/13/2022 19:58:20'!
test01StackShouldBeEmptyWhenCreated

	| stack |
	stack := OOStackWithTope newWith: 0.
	
	self assert: stack isEmpty! !

!OOStackWithTopeTest methodsFor: 'test' stamp: 'LV 10/13/2022 19:58:20'!
test02PushAddElementsToTheStack

	| stack |
	stack := OOStackWithTope newWith: 2.
	
	stack push: 'something'.
	
	self deny: stack isEmpty! !

!OOStackWithTopeTest methodsFor: 'test' stamp: 'LV 10/13/2022 19:58:21'!
test03PopRemovesElementsFromTheStack

	| stack |
	stack := OOStackWithTope newWith: 2.
	stack push: 'something'.
	
	stack pop.
	
	self assert: stack isEmpty! !

!OOStackWithTopeTest methodsFor: 'test' stamp: 'LV 10/13/2022 19:58:21'!
test04PopReturnsLastPushedObject

	| stack pushedObject |
	stack := OOStackWithTope newWith: 2.
	pushedObject := 'something'.
	
	stack push: pushedObject.
	
	self assert: pushedObject equals: stack pop! !

!OOStackWithTopeTest methodsFor: 'test' stamp: 'LV 10/13/2022 19:58:21'!
test05StackBehavesLIFO

	| stack firstPushedObject secondPushedObject |
	
	stack := OOStackWithTope newWith: 2.
	firstPushedObject := 'first'.
	secondPushedObject := 'second'.
	
	stack push: firstPushedObject.
	stack push: secondPushedObject.
	
	self assert: secondPushedObject equals: stack pop.
	self assert: firstPushedObject equals: stack pop.
	self assert: stack isEmpty 
	! !

!OOStackWithTopeTest methodsFor: 'test' stamp: 'LV 10/13/2022 19:58:21'!
test06TopReturnsLastPushedObject

	| stack pushedObject |
	stack := OOStackWithTope newWith: 2.
	pushedObject := 'something'.
	
	stack push: pushedObject.
	
	self assert: pushedObject equals: stack top.
	! !

!OOStackWithTopeTest methodsFor: 'test' stamp: 'LV 10/13/2022 19:58:21'!
test07TopDoesNotRemoveObjectFromStack

	| stack pushedObject |
	
	stack := OOStackWithTope newWith: 2.
	pushedObject := 'something'.
	
	stack push: pushedObject.
	
	self assert: 1 equals: stack size.
	stack top.
	self assert: 1 equals: stack size.
	! !

!OOStackWithTopeTest methodsFor: 'test' stamp: 'LV 10/14/2022 12:28:54'!
test08CanNotPopWhenThereAreNoObjectsInTheStack

	| stack  |
	
	stack := OOStackWithTope newWith: 1.
	self
		should: [ stack pop ]
		raise: Error - MessageNotUnderstood 
		withExceptionDo: [ :anError |
			self assert: OOStackWithTope stackEmptyErrorDescription equals: anError messageText ]
		
! !

!OOStackWithTopeTest methodsFor: 'test' stamp: 'LV 10/14/2022 12:28:59'!
test09CanNotPopWhenThereAreNoObjectsInTheStackAndTheStackHadObjects

	| stack  |
	
	stack := OOStackWithTope newWith: 1.
	stack push: 'something'.
	stack pop.
	
	self
		should: [ stack pop ]
		raise: Error - MessageNotUnderstood 
		withExceptionDo: [ :anError |
			self assert: OOStackWithTope stackEmptyErrorDescription equals: anError messageText ]
		
! !

!OOStackWithTopeTest methodsFor: 'test' stamp: 'LV 10/14/2022 12:29:07'!
test10CanNotTopWhenThereAreNoObjectsInTheStack

	| stack  |
	
	stack := OOStackWithTope newWith: 1.
	self
		should: [ stack top ]
		raise: Error - MessageNotUnderstood 
		withExceptionDo: [ :anError |
			self assert: OOStackWithTope stackEmptyErrorDescription equals: anError messageText ]
		
! !

!OOStackWithTopeTest methodsFor: 'test' stamp: 'LV 10/14/2022 12:28:22'!
test11CanNotPushMoreElements
	
	| stack  |
	
	stack := OOStackWithTope newWith: 5.
	
	stack push: 'Pedro'.
	stack push: 'Carlos'.
	stack push: 'Pepe'.
	stack push: 'Julio'.
	stack push: 'Pablo'.
	
	self
		should: [ stack push: 'Juan' ]
		raise: Error - MessageNotUnderstood 
		withExceptionDo: [ :anError |
			self assert: OOStackWithTope stackCanNotStorageMoreElements equals: anError messageText ]
		! !

!OOStackWithTopeTest methodsFor: 'test' stamp: 'LV 10/13/2022 19:58:21'!
test12PushAddElementsWithAValidTope
	
	| stack  |
	
	stack := OOStackWithTope newWith: 4.
	
	stack push: 'Pedro'.
	stack push: 'Carlos'.
	stack push: 'Pepe'.
	
	self deny: stack isEmpty.! !

!OOStackWithTopeTest methodsFor: 'test' stamp: 'LV 10/14/2022 12:29:20'!
test13TopeCanNotBeANegativeValue
	
	self
		should: [OOStackWithTope newWith: -1. ]
		raise: Error 
		withExceptionDo: [ :anError |
			self assert: OOStackWithTope invalidValueForTope equals: anError messageText ]! !

!OOStackWithTopeTest methodsFor: 'test' stamp: 'LV 10/14/2022 12:29:25'!
test14TopeCanNotBeAString
	
	self
		should: [OOStackWithTope newWith: 'uno'. ]
		raise: Error 
		withExceptionDo: [ :anError |
			self assert: OOStackWithTope invalidValueForTope equals: anError messageText ]! !


!classDefinition: #SentenceFinderByPrefixTest category: 'Stack-Exercise'!
TestCase subclass: #SentenceFinderByPrefixTest
	instanceVariableNames: ''
	classVariableNames: ''
	poolDictionaries: ''
	category: 'Stack-Exercise'!

!SentenceFinderByPrefixTest methodsFor: 'tests' stamp: 'LV 10/14/2022 11:34:51'!
assert: aStack hasTheSameElementsThat: anotherStack
	
	aStack size timesRepeat:[ (aStack pop) = (anotherStack pop)].! !

!SentenceFinderByPrefixTest methodsFor: 'tests' stamp: 'LV 10/14/2022 12:43:58'!
assertASentenceFinderDoesNotFindThePrefix: aSentenceFinder
	
	self
		should: [ self assert: (aSentenceFinder find) isEmpty .]
		raise: Error 
		withExceptionDo: [ :anError |
			self assert: SentenceFinderByPrefix canNotFindThePrefix equals: anError messageText ]! !

!SentenceFinderByPrefixTest methodsFor: 'tests' stamp: 'lb 10/14/2022 14:53:31'!
assertASentencesFinderShouldNotWorkWithInvalidPrefix: aSentenceFinder
	
	self
		should: [ self assert: (aSentenceFinder find) isEmpty.]
		raise: Error 
		withExceptionDo: [ :anError |
			self assert: SentenceFinderByPrefix isNotAValidPrefix equals: anError messageText ].
	
	! !

!SentenceFinderByPrefixTest methodsFor: 'tests' stamp: 'LV 10/13/2022 20:03:39'!
emptyStack

	^OOStack new.! !

!SentenceFinderByPrefixTest methodsFor: 'tests' stamp: 'LV 10/13/2022 20:12:08'!
expectedOneMatch

	 ^(OrderedCollection with: 'Pedro el poderoso').
	
	
	
	! !

!SentenceFinderByPrefixTest methodsFor: 'tests' stamp: 'LV 10/13/2022 20:12:27'!
expectedTwoMatches
	
	^(OrderedCollection with:'Jorge el curioso' with: 'Jorgito el cariñosito').
	! !

!SentenceFinderByPrefixTest methodsFor: 'tests' stamp: 'LV 10/13/2022 14:33:13'!
stackWithThreeSenteces
	
	| stack |
	
	stack := self emptyStack.
	
	stack push: 'Jorge el curioso'.
	stack push: 'Pedro el poderoso'.
	stack push: 'Jorgito el cariñosito'.
	
	^stack.
	
	! !

!SentenceFinderByPrefixTest methodsFor: 'tests' stamp: 'LV 10/14/2022 12:36:15'!
test01CanNotFindAnEmptyPrefix
	
	| sentenceFinder prefix stackWithThreeSenteces |
	
	prefix :=''.
	 
	stackWithThreeSenteces := self stackWithThreeSenteces.
	
	sentenceFinder := SentenceFinderByPrefix withAStack: stackWithThreeSenteces forAPrefix: prefix.
	
	self assertASentencesFinderShouldNotWorkWithInvalidPrefix: sentenceFinder .
	
		
	
		
	! !

!SentenceFinderByPrefixTest methodsFor: 'tests' stamp: 'LV 10/14/2022 12:36:27'!
test02CanNotFindAPrefixWithSpace

	| sentenceFinder prefix stackWithThreeSenteces |
	
	prefix :='Jor g'.
	 
	stackWithThreeSenteces := self stackWithThreeSenteces.
	
	sentenceFinder := SentenceFinderByPrefix withAStack: stackWithThreeSenteces forAPrefix: prefix.
	
	self assertASentencesFinderShouldNotWorkWithInvalidPrefix: sentenceFinder .! !

!SentenceFinderByPrefixTest methodsFor: 'tests' stamp: 'LV 10/14/2022 12:36:31'!
test03CanNotFindAPrefixAsASpace
	
	| sentenceFinder prefix stackWithThreeSenteces |
	
	prefix :=' '.
	 
	stackWithThreeSenteces := self stackWithThreeSenteces.
	
	sentenceFinder := SentenceFinderByPrefix withAStack: stackWithThreeSenteces forAPrefix: prefix.
	
	self assertASentencesFinderShouldNotWorkWithInvalidPrefix: sentenceFinder .! !

!SentenceFinderByPrefixTest methodsFor: 'tests' stamp: 'LV 10/14/2022 12:47:44'!
test04DoesNotFindAPrefix
	
	| sentenceFinder prefix stackWithThreeSenteces |
	
	prefix := 'Mart'.
	
	stackWithThreeSenteces := self stackWithThreeSenteces.
	
	sentenceFinder := SentenceFinderByPrefix withAStack: stackWithThreeSenteces forAPrefix: prefix.
	
	self assertASentenceFinderDoesNotFindThePrefix: sentenceFinder .
		! !

!SentenceFinderByPrefixTest methodsFor: 'tests' stamp: 'LV 10/14/2022 12:47:11'!
test05FindsASentenceWithPrefix

	| matches sentenceFinder prefix stackWithThreeSentences auxiliaryStack expectedMatches |
	
	prefix := 'Pedr'.
	
	stackWithThreeSentences := self stackWithThreeSenteces.
	auxiliaryStack := stackWithThreeSentences.
	
	sentenceFinder := SentenceFinderByPrefix withAStack: stackWithThreeSentences forAPrefix: prefix.
	
	matches :=  sentenceFinder find.
	expectedMatches := self expectedOneMatch.
	
	self assert: (matches = expectedMatches ).
	self assert: self stackWithThreeSenteces hasTheSameElementsThat: auxiliaryStack.! !

!SentenceFinderByPrefixTest methodsFor: 'tests' stamp: 'LV 10/14/2022 12:40:19'!
test06NoSentencesFindedInAnEmptyStack
	
	| sentenceFinder  prefix emptyStack  |
	
	prefix := 'Pedr'.
	
	emptyStack := self emptyStack.
	
	sentenceFinder := SentenceFinderByPrefix withAStack: emptyStack  forAPrefix: prefix .
	
	self
		should: [ self assert: (sentenceFinder find) isEmpty.]
		raise: Error 
		withExceptionDo: [ :anError |
			self assert: SentenceFinderByPrefix canNotLookForAPrefixInAEmptyStack equals: anError messageText ]! !

!SentenceFinderByPrefixTest methodsFor: 'tests' stamp: 'lb 10/14/2022 15:02:34'!
test07FindsAllSentencesWithPrefix

	| stackWithMoreThanOneSentence matches sentenceFinder prefix auxiliaryStack matchesExpected |
	
	prefix := 'Jorg'.
	
	stackWithMoreThanOneSentence := self stackWithThreeSenteces.
	auxiliaryStack := stackWithMoreThanOneSentence.
	
	sentenceFinder := SentenceFinderByPrefix withAStack: stackWithMoreThanOneSentence forAPrefix: prefix.
	
	matches :=  sentenceFinder find.
	matchesExpected := self expectedTwoMatches.
	
	self assert: (matches =  matchesExpected).
	self assert: self stackWithThreeSenteces hasTheSameElementsThat: auxiliaryStack.
	
	
	
	
	
	
	
	! !

!SentenceFinderByPrefixTest methodsFor: 'tests' stamp: 'LV 10/14/2022 12:45:00'!
test08FindsIsCaseSensitive
	
	| sentenceFinder prefix stackWithThreeSenteces |
	
	prefix :='jorg'.
	 
	stackWithThreeSenteces := self stackWithThreeSenteces.
	
	sentenceFinder := SentenceFinderByPrefix withAStack: stackWithThreeSenteces forAPrefix: prefix.
	
	self assertASentenceFinderDoesNotFindThePrefix: sentenceFinder.! !


!classDefinition: #OOStack category: 'Stack-Exercise'!
Object subclass: #OOStack
	instanceVariableNames: 'elements tope'
	classVariableNames: ''
	poolDictionaries: ''
	category: 'Stack-Exercise'!

!OOStack methodsFor: 'operations' stamp: 'LV 10/11/2022 20:17:10'!
pop
	
	^elements remove: self top.
	
	! !

!OOStack methodsFor: 'operations' stamp: 'LV 10/13/2022 19:55:37'!
push: aSentence
	
	elements add: aSentence! !

!OOStack methodsFor: 'operations' stamp: 'LV 10/11/2022 20:17:10'!
size
	
	^elements size.
	! !

!OOStack methodsFor: 'operations' stamp: 'LV 10/9/2022 19:16:49'!
top
	
	^self state top! !

!OOStack methodsFor: 'operations' stamp: 'LV 10/11/2022 21:15:50'!
topWhenStackIsEmpty

	^self signalErrorStackShouldNotBeEmpty ! !

!OOStack methodsFor: 'operations' stamp: 'LV 10/12/2022 14:07:50'!
topWhenStackIsNotEmpty
	
	^elements last! !


!OOStack methodsFor: 'testing' stamp: 'LV 10/13/2022 19:59:36'!
initialize
	
	elements := OrderedCollection new.
	 
	
	! !

!OOStack methodsFor: 'testing' stamp: 'LV 10/11/2022 20:17:10'!
isEmpty
	
	^(elements isEmpty).! !

!OOStack methodsFor: 'testing' stamp: 'LV 10/11/2022 20:47:18'!
state

	^OOStackState stateOf: self.
	
	
	
	
	! !


!OOStack methodsFor: 'error' stamp: 'LV 10/9/2022 18:23:03'!
signalErrorStackShouldNotBeEmpty

	 self error: self class stackEmptyErrorDescription .! !

"-- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- "!

!classDefinition: 'OOStack class' category: 'Stack-Exercise'!
OOStack class
	instanceVariableNames: ''!

!OOStack class methodsFor: 'error descriptions' stamp: 'HernanWilkinson 5/7/2012 11:51'!
stackEmptyErrorDescription
	
	^ 'Stack is empty'! !


!classDefinition: #OOStackWithTope category: 'Stack-Exercise'!
OOStack subclass: #OOStackWithTope
	instanceVariableNames: ''
	classVariableNames: ''
	poolDictionaries: ''
	category: 'Stack-Exercise'!

!OOStackWithTope methodsFor: 'testing' stamp: 'LV 10/13/2022 19:52:31'!
initializeWith: unTope	
	
	elements := OrderedCollection new.
	
	(unTope isString) ifTrue:[^self error: self class invalidValueForTope].
	
	(unTope < 0 ) ifTrue:[^self error: self class invalidValueForTope].
	
	tope := unTope .! !


!OOStackWithTope methodsFor: 'operations' stamp: 'LV 10/13/2022 19:44:15'!
push: aSentence

	elements size >= tope
		ifTrue: [ ^self error: self class stackCanNotStorageMoreElements ]
		ifFalse: [ elements add: aSentence].! !

"-- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- "!

!classDefinition: 'OOStackWithTope class' category: 'Stack-Exercise'!
OOStackWithTope class
	instanceVariableNames: ''!

!OOStackWithTope class methodsFor: 'instance creation' stamp: 'LV 10/13/2022 19:48:57'!
newWith: unTope
	
	^self new initializeWith: unTope.! !


!OOStackWithTope class methodsFor: 'error' stamp: 'LV 10/13/2022 20:07:13'!
invalidValueForTope

	^'El tope debe ser un numero mayor a cero'.! !

!OOStackWithTope class methodsFor: 'error' stamp: 'LV 10/13/2022 20:07:34'!
stackCanNotStorageMoreElements
	
	^'No se pueden almacenar mas elementos'.! !


!classDefinition: #OOStackState category: 'Stack-Exercise'!
Object subclass: #OOStackState
	instanceVariableNames: 'mainStack'
	classVariableNames: ''
	poolDictionaries: ''
	category: 'Stack-Exercise'!

!OOStackState methodsFor: 'operations' stamp: 'LV 10/9/2022 19:35:09'!
top
	
	self subclassResponsibility .! !


!OOStackState methodsFor: 'testing' stamp: 'LV 10/12/2022 13:59:19'!
initializeWith: aStack

	mainStack := aStack .! !

"-- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- "!

!classDefinition: 'OOStackState class' category: 'Stack-Exercise'!
OOStackState class
	instanceVariableNames: ''!

!OOStackState class methodsFor: 'instance creation' stamp: 'LV 10/11/2022 20:57:41'!
actualState: aStack
	
	self subclassResponsibility .! !

!OOStackState class methodsFor: 'instance creation' stamp: 'LV 10/12/2022 14:31:43'!
newWithState:aStack
	
	^self new initializeWith: aStack.! !

!OOStackState class methodsFor: 'instance creation' stamp: 'LV 10/12/2022 14:31:43'!
stateOf: aStack
	
	^(self subclasses detect:[: aStateOfStack |  aStateOfStack actualState: aStack ]) newWithState: aStack.
	
	 ! !


!classDefinition: #OOStateEmpty category: 'Stack-Exercise'!
OOStackState subclass: #OOStateEmpty
	instanceVariableNames: ''
	classVariableNames: ''
	poolDictionaries: ''
	category: 'Stack-Exercise'!

!OOStateEmpty methodsFor: 'operations' stamp: 'LV 10/12/2022 14:22:27'!
top
	
	^mainStack topWhenStackIsEmpty.
	! !

"-- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- "!

!classDefinition: 'OOStateEmpty class' category: 'Stack-Exercise'!
OOStateEmpty class
	instanceVariableNames: ''!

!OOStateEmpty class methodsFor: 'instance creation' stamp: 'LV 10/12/2022 14:23:50'!
actualState: aStack
	
	^aStack isEmpty. ! !


!classDefinition: #OOStateEmptyNot category: 'Stack-Exercise'!
OOStackState subclass: #OOStateEmptyNot
	instanceVariableNames: ''
	classVariableNames: ''
	poolDictionaries: ''
	category: 'Stack-Exercise'!

!OOStateEmptyNot methodsFor: 'operations' stamp: 'LV 10/12/2022 14:22:40'!
top
	
	^mainStack topWhenStackIsNotEmpty ! !

"-- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- "!

!classDefinition: 'OOStateEmptyNot class' category: 'Stack-Exercise'!
OOStateEmptyNot class
	instanceVariableNames: ''!

!OOStateEmptyNot class methodsFor: 'instance creation' stamp: 'LV 10/12/2022 14:23:44'!
actualState: aStack
	
	^aStack isEmpty not. ! !


!classDefinition: #SentenceFinderByPrefix category: 'Stack-Exercise'!
Object subclass: #SentenceFinderByPrefix
	instanceVariableNames: 'stack sentences prefix auxiliaryStack'
	classVariableNames: ''
	poolDictionaries: ''
	category: 'Stack-Exercise'!

!SentenceFinderByPrefix methodsFor: 'testing' stamp: 'LV 10/14/2022 12:11:30'!
initializeWith: aStack for: aPrefix
	
	stack := aStack.
	
	auxiliaryStack := OOStack new.
	
	prefix := aPrefix.
	
	
	! !


!SentenceFinderByPrefix methodsFor: 'comparing' stamp: 'LV 10/14/2022 12:07:28'!
prefixIsInvalid

	(prefix isEmpty or:[ prefix includes: $ ]) ifTrue:[^self error: self class isNotAValidPrefix].
	
	! !


!SentenceFinderByPrefix methodsFor: 'operations' stamp: 'lb 10/14/2022 14:58:18'!
find
	sentences := OrderedCollection new.
	
	self prefixIsInvalid.
	
	self lookForPrefixInStack.
	
	self reorganizeStackAsTheOriginalOne.
		
	sentences isEmpty ifTrue: [^ self error: self class canNotFindThePrefix].
	
	
	^sentences
	
	 
							
	
	
	
	

	! !


!SentenceFinderByPrefix methodsFor: 'operations - private' stamp: 'LV 10/13/2022 15:24:06'!
compare: aSentence with: aPrefix
	
	( aSentence beginsWith: aPrefix ) ifTrue:[ sentences addFirst: aSentence ].
	
	
! !

!SentenceFinderByPrefix methodsFor: 'operations - private' stamp: 'LV 10/14/2022 12:40:59'!
lookForPrefixInStack

	|sentence|

	(stack isEmpty) ifTrue:[^self error: self class canNotLookForAPrefixInAEmptyStack].
	
	stack size timesRepeat: [ sentence := stack pop.  auxiliaryStack push: sentence. self compare: sentence with: 	prefix ].! !

!SentenceFinderByPrefix methodsFor: 'operations - private' stamp: 'LV 10/14/2022 12:19:53'!
reorganizeStackAsTheOriginalOne
	
	| stackElement |
	
	auxiliaryStack size timesRepeat:[ stackElement := auxiliaryStack pop. stack push: stackElement.].! !

"-- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- "!

!classDefinition: 'SentenceFinderByPrefix class' category: 'Stack-Exercise'!
SentenceFinderByPrefix class
	instanceVariableNames: ''!

!SentenceFinderByPrefix class methodsFor: 'instance creation' stamp: 'LV 10/13/2022 15:24:23'!
withAStack: aStack forAPrefix: aPrefix
	
	^self new initializeWith: aStack for: aPrefix ! !


!SentenceFinderByPrefix class methodsFor: 'error' stamp: 'LV 10/12/2022 23:11:07'!
canNotFindThePrefix
	
	^'El prefijo no se encuentra entre las oraciones'! !

!SentenceFinderByPrefix class methodsFor: 'error' stamp: 'LV 10/13/2022 18:42:45'!
canNotLookForAPrefixInAEmptyStack

	^'No puedo buscar un prefijo en un stack vacio'.! !

!SentenceFinderByPrefix class methodsFor: 'error' stamp: 'LV 10/12/2022 17:33:42'!
isNotAValidPrefix
	
	^'El prefijo no es valido'! !
