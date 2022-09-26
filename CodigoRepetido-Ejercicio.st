!classDefinition: #CantSuspend category: 'CodigoRepetido-Ejercicio'!
Error subclass: #CantSuspend
	instanceVariableNames: ''
	classVariableNames: ''
	poolDictionaries: ''
	category: 'CodigoRepetido-Ejercicio'!


!classDefinition: #NotFound category: 'CodigoRepetido-Ejercicio'!
Error subclass: #NotFound
	instanceVariableNames: ''
	classVariableNames: ''
	poolDictionaries: ''
	category: 'CodigoRepetido-Ejercicio'!


!classDefinition: #CustomerBookTest category: 'CodigoRepetido-Ejercicio'!
TestCase subclass: #CustomerBookTest
	instanceVariableNames: ''
	classVariableNames: ''
	poolDictionaries: ''
	category: 'CodigoRepetido-Ejercicio'!

!CustomerBookTest methodsFor: 'testing' stamp: 'LV 9/24/2022 20:42:15'!
addACustomerAndThenSuspended: aName InACustomerBook: aCustomerBook 

	aCustomerBook addCustomerNamed: aName .
	aCustomerBook suspendCustomerNamed: aName .! !

!CustomerBookTest methodsFor: 'testing' stamp: 'LV 9/24/2022 19:43:35'!
anAction: aClosure Do: anotherClosure WithError: anError
	[aClosure value. self fail ]
		on: anError 
		do: anotherClosure.! !

!CustomerBookTest methodsFor: 'testing' stamp: 'LV 9/25/2022 09:16:37'!
assertACustomerBookShouldBeEmpty: aCustomerBook 

		[:anError | 
		   self assert: anError messageText = CustomerBook customerCanNotBeEmptyErrorMessage.
		   self assert: aCustomerBook isEmpty]! !

!CustomerBookTest methodsFor: 'testing' stamp: 'Lv 9/25/2022 23:10:11'!
assertInACustomerBook: aCustomerBook AreActive: quantityActive AreSuspended: quantitySuspended 
	
	self assert: quantityActive equals: aCustomerBook numberOfActiveCustomers.
	self assert: quantitySuspended equals: aCustomerBook numberOfSuspendedCustomers.
	self assert: quantityActive + quantitySuspended equals: aCustomerBook numberOfCustomers.! !

!CustomerBookTest methodsFor: 'testing' stamp: 'Lv 9/25/2022 23:18:23'!
assertTheOnlyCustomerIn: aCustomerBook Is: aNombre
	
	^[self assert: aCustomerBook numberOfCustomers = aCustomerBook  thereIsOneCustomer .
        		self assert: (aCustomerBook includesCustomerNamed: aNombre)].! !

!CustomerBookTest methodsFor: 'testing' stamp: 'Lv 9/25/2022 23:23:57'!
test01AddingCustomerShouldNotTakeMoreThan50Milliseconds

	| customerBook johnLennon |
	
	customerBook := CustomerBook new.
	johnLennon := 'John Lennon'.
	
	self should: [customerBook addCustomerNamed: johnLennon.] notTakeMoreThan: 50 milliSeconds. 
	
	
	
	
	
	

	
! !

!CustomerBookTest methodsFor: 'testing' stamp: 'Lv 9/25/2022 23:16:42'!
test02RemovingCustomerShouldNotTakeMoreThan100Milliseconds

	| customerBook paulMcCartney |
	
	customerBook := CustomerBook new.
	paulMcCartney := 'Paul McCartney'.
	
	self should: [customerBook addCustomerNamed: paulMcCartney .] notTakeMoreThan: 100 milliSeconds. 
	
	

! !

!CustomerBookTest methodsFor: 'testing' stamp: 'LV 9/25/2022 09:19:20'!
test03CanNotAddACustomerWithEmptyName 

	| customerBook |
			
	customerBook := CustomerBook new.

	self anAction: [customerBook addCustomerNamed: '']
	Do: (self assertACustomerBookShouldBeEmpty: customerBook) 
	WithError: Error.! !

!CustomerBookTest methodsFor: 'testing' stamp: 'LV 9/24/2022 19:57:36'!
test04CanNotRemoveAnInvalidCustomer
	
	| customerBook johnLennon paulMcCartney|
		
	customerBook := CustomerBook new.
	paulMcCartney := 'Paul McCartney'.
	johnLennon := 'John Lennon'.
	customerBook addCustomerNamed: johnLennon.

	self anAction: [customerBook removeCustomerNamed: paulMcCartney]
	Do: (self assertTheOnlyCustomerIn: customerBook Is: johnLennon)
	WithError: NotFound.! !

!CustomerBookTest methodsFor: 'testing' stamp: 'Lv 9/25/2022 23:10:42'!
test05SuspendingACustomerShouldNotRemoveItFromCustomerBook

	| customerBook paulMcCartney|
	
	customerBook := CustomerBook new.
	paulMcCartney := 'Paul McCartney'.
	
	self addACustomerAndThenSuspended: paulMcCartney  InACustomerBook: customerBook. 
	
	self assertInACustomerBook: customerBook AreActive: customerBook thereIsNoCustomer AreSuspended: customerBook thereIsOneCustomer. 
							
	self assert: (customerBook includesCustomerNamed: paulMcCartney).

	
! !

!CustomerBookTest methodsFor: 'testing' stamp: 'Lv 9/25/2022 23:11:17'!
test06RemovingASuspendedCustomerShouldRemoveItFromCustomerBook

	| customerBook paulMcCartney |
	
	customerBook := CustomerBook new.
	paulMcCartney := 'Paul McCartney'.
	
	self addACustomerAndThenSuspended: paulMcCartney  InACustomerBook: customerBook.
	customerBook removeCustomerNamed: paulMcCartney.

	self assertInACustomerBook: customerBook AreActive: customerBook thereIsNoCustomer AreSuspended: customerBook thereIsNoCustomer. 
							
	self assert: (customerBook includesCustomerNamed: paulMcCartney) not.

	
	
! !

!CustomerBookTest methodsFor: 'testing' stamp: 'LV 9/24/2022 19:58:07'!
test07CanNotSuspendAnInvalidCustomer

    	| customerBook johnLennon ringoStarr |

    	customerBook := CustomerBook new.
    	johnLennon := 'John Lennon'.
	ringoStarr := 'Ringo Starr'.
	
    	customerBook addCustomerNamed: johnLennon.
	
	self anAction: [customerBook suspendCustomerNamed: ringoStarr]
	Do: (self assertTheOnlyCustomerIn: customerBook Is: johnLennon)
	WithError: CantSuspend.
		! !

!CustomerBookTest methodsFor: 'testing' stamp: 'Lv 9/25/2022 23:26:36'!
test08CanNotSuspendAnAlreadySuspendedCustomer

    	| customerBook johnLennon |

    	customerBook := CustomerBook new.
    	johnLennon := 'John Lennon'.
	
    	self addACustomerAndThenSuspended: johnLennon InACustomerBook: customerBook .
	
	self anAction: [customerBook suspendCustomerNamed: johnLennon]
	Do: (self assertTheOnlyCustomerIn: customerBook Is: johnLennon)
	WithError: CantSuspend.
	
	! !


!classDefinition: #CustomerBook category: 'CodigoRepetido-Ejercicio'!
Object subclass: #CustomerBook
	instanceVariableNames: 'suspended active'
	classVariableNames: ''
	poolDictionaries: ''
	category: 'CodigoRepetido-Ejercicio'!

!CustomerBook methodsFor: 'testing' stamp: 'AC 9/23/2022 19:45:49'!
includesCustomerNamed: aName

	^(active includes: aName) or: [ suspended includes: aName ]! !

!CustomerBook methodsFor: 'testing' stamp: 'NR 4/3/2019 10:14:26'!
isEmpty
	
	^active isEmpty and: [ suspended isEmpty ]! !

!CustomerBook methodsFor: 'testing' stamp: 'LV 9/24/2022 10:57:06'!
thereIsNoCustomer
	^0.! !

!CustomerBook methodsFor: 'testing' stamp: 'LV 9/24/2022 12:07:34'!
thereIsOneCustomer
	^1.! !


!CustomerBook methodsFor: 'initialization' stamp: 'NR 4/3/2019 10:14:26'!
initialize

	super initialize.
	active := OrderedCollection new.
	suspended:= OrderedCollection new.! !


!CustomerBook methodsFor: 'customer management' stamp: 'AC 9/23/2022 19:48:39'!
addCustomerNamed: aName

	aName isEmpty ifTrue: [ self signalCustomerNameCannotBeEmpty ].
	(self includesCustomerNamed: aName) ifTrue: [ self signalCustomerAlreadyExists ].
	
	active add: aName ! !

!CustomerBook methodsFor: 'customer management' stamp: 'NR 4/3/2019 10:14:26'!
numberOfActiveCustomers
	
	^active size! !

!CustomerBook methodsFor: 'customer management' stamp: 'AC 9/23/2022 19:30:41'!
numberOfCustomers
	
	^(self numberOfActiveCustomers + self numberOfSuspendedCustomers).! !

!CustomerBook methodsFor: 'customer management' stamp: 'NR 9/19/2018 17:36:09'!
numberOfSuspendedCustomers
	
	^suspended size! !

!CustomerBook methodsFor: 'customer management' stamp: 'LV 9/25/2022 08:56:27'!
removeCustomerFrom: aCollection Named: aName
	
	(aCollection includes: aName ) ifTrue: [aCollection remove:aName ].
	! !

!CustomerBook methodsFor: 'customer management' stamp: 'LV 9/25/2022 08:56:58'!
removeCustomerNamed: aName 
	
	(self includesCustomerNamed: aName) ifFalse:[^ NotFound signal.].
	
	self removeCustomerFrom: active Named: aName.
 	
	self removeCustomerFrom: suspended Named: aName.



	
! !

!CustomerBook methodsFor: 'customer management' stamp: 'HernanWilkinson 7/6/2011 17:52'!
signalCustomerAlreadyExists 

	self error: self class customerAlreadyExistsErrorMessage! !

!CustomerBook methodsFor: 'customer management' stamp: 'HernanWilkinson 7/6/2011 17:51'!
signalCustomerNameCannotBeEmpty 

	self error: self class customerCanNotBeEmptyErrorMessage ! !

!CustomerBook methodsFor: 'customer management' stamp: 'AC 9/23/2022 19:54:03'!
suspendCustomerNamed: aName 
	
	(active includes: aName) ifFalse: [^CantSuspend signal].
	
	active remove: aName.
	
	suspended add: aName
! !

"-- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- "!

!classDefinition: 'CustomerBook class' category: 'CodigoRepetido-Ejercicio'!
CustomerBook class
	instanceVariableNames: ''!

!CustomerBook class methodsFor: 'error messages' stamp: 'NR 4/30/2020 09:05:18'!
customerAlreadyExistsErrorMessage

	^'Customer Already Exists'! !

!CustomerBook class methodsFor: 'error messages' stamp: 'NR 4/30/2020 09:05:25'!
customerCanNotBeEmptyErrorMessage

	^'Customer Name Cannot Be Empty'! !
