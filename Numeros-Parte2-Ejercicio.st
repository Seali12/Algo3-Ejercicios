!classDefinition: #NumeroTest category: 'Numeros-Parte2-Ejercicio'!
TestCase subclass: #NumeroTest
	instanceVariableNames: 'zero one two four oneFifth oneHalf five twoFifth twoTwentyfifth fiveHalfs three eight negativeOne negativeTwo'
	classVariableNames: ''
	poolDictionaries: ''
	category: 'Numeros-Parte2-Ejercicio'!

!NumeroTest methodsFor: 'tests' stamp: 'LL 9/13/2020 16:17:50'!
test01isZeroReturnsTrueWhenAskToZero

	self assert: zero isZero! !

!NumeroTest methodsFor: 'tests' stamp: 'LL 9/13/2020 16:17:58'!
test02isZeroReturnsFalseWhenAskToOthersButZero

	self deny: one isZero! !

!NumeroTest methodsFor: 'tests' stamp: 'HernanWilkinson 5/7/2016 20:13'!
test03isOneReturnsTrueWhenAskToOne

	self assert: one isOne! !

!NumeroTest methodsFor: 'tests' stamp: 'HernanWilkinson 5/7/2016 20:13'!
test04isOneReturnsFalseWhenAskToOtherThanOne

	self deny: zero isOne! !

!NumeroTest methodsFor: 'tests' stamp: 'JS 5/5/2022 03:39:57'!
test05EnteroAddsWithEnteroCorrectly

	self assert: two equals: one + one! !

!NumeroTest methodsFor: 'tests' stamp: 'JS 5/5/2022 03:40:10'!
test06EnteroMultipliesWithEnteroCorrectly

	self assert: four equals: two * two! !

!NumeroTest methodsFor: 'tests' stamp: 'JS 5/5/2022 03:40:22'!
test07EnteroDividesEnteroCorrectly

	self assert: one equals: two / two! !

!NumeroTest methodsFor: 'tests' stamp: 'JS 5/5/2022 03:40:57'!
test08FraccionAddsWithFraccionCorrectly
"
    La suma de fracciones es:
	 
	a/b + c/d = (a.d + c.b) / (b.d)
	 
	SI ESTAN PENSANDO EN LA REDUCCION DE FRACCIONES NO SE PREOCUPEN!!
	TODAVIA NO SE ESTA TESTEANDO ESE CASO
"
	| sevenTenths |

	sevenTenths := (Entero with: 7) / (Entero with: 10).

	self assert: sevenTenths equals: oneFifth + oneHalf! !

!NumeroTest methodsFor: 'tests' stamp: 'JS 5/5/2022 03:41:20'!
test09FraccionMultipliesWithFraccionCorrectly
"
    La multiplicacion de fracciones es:
	 
	(a/b) * (c/d) = (a.c) / (b.d)
"

	self assert: twoTwentyfifth equals: oneFifth * twoFifth! !

!NumeroTest methodsFor: 'tests' stamp: 'JS 5/5/2022 03:41:34'!
test10FraccionDividesFraccionCorrectly
"
    La division de fracciones es:
	 
	(a/b) / (c/d) = (a.d) / (b.c)
"

	self assert: fiveHalfs equals: oneHalf / oneFifth! !

!NumeroTest methodsFor: 'tests' stamp: 'LV 9/28/2022 17:44:19'!
test11EnteroAddsFraccionCorrectly
"
	Ahora empieza la diversion!!
"

	self assert: (Entero with: 6) / (Entero with: 5) equals: one + oneFifth! !

!NumeroTest methodsFor: 'tests' stamp: 'JS 5/5/2022 03:42:29'!
test12FraccionAddsEnteroCorrectly

	self assert: (Entero with: 6) / (Entero with: 5) equals: oneFifth + one! !

!NumeroTest methodsFor: 'tests' stamp: 'JS 5/5/2022 03:43:16'!
test13EnteroMultipliesFraccionCorrectly

	self assert: twoFifth equals: two * oneFifth! !

!NumeroTest methodsFor: 'tests' stamp: 'JS 5/5/2022 03:43:27'!
test14FraccionMultipliesEnteroCorrectly

	self assert: twoFifth equals: oneFifth * two! !

!NumeroTest methodsFor: 'tests' stamp: 'JS 5/5/2022 03:43:40'!
test15EnteroDividesFraccionCorrectly

	self assert: fiveHalfs equals: one / twoFifth! !

!NumeroTest methodsFor: 'tests' stamp: 'JS 5/5/2022 03:43:58'!
test16FraccionDividesEnteroCorrectly

	self assert: twoTwentyfifth equals: twoFifth / five! !

!NumeroTest methodsFor: 'tests' stamp: 'HernanWilkinson 5/7/2016 22:38'!
test17AFraccionCanBeEqualToAnEntero

	self assert: two equals: four / two! !

!NumeroTest methodsFor: 'tests' stamp: 'HernanWilkinson 5/7/2016 22:39'!
test18AparentFraccionesAreEqual

	self assert: oneHalf equals: two / four! !

!NumeroTest methodsFor: 'tests' stamp: 'JS 5/5/2022 03:44:53'!
test19AddingFraccionesCanReturnAnEntero

	self assert: one equals: oneHalf + oneHalf! !

!NumeroTest methodsFor: 'tests' stamp: 'JS 5/5/2022 03:45:13'!
test20MultiplyingFraccionesCanReturnAnEntero

	self assert: one equals: (two/five) * (five/two)! !

!NumeroTest methodsFor: 'tests' stamp: 'JS 5/5/2022 03:45:27'!
test21DividingFraccionesCanReturnAnEntero

	self assert: one equals: oneHalf / oneHalf! !

!NumeroTest methodsFor: 'tests' stamp: 'JS 5/5/2022 03:45:40'!
test22DividingEnterosCanReturnAFraccion

	self assert: oneHalf equals: two / four! !

!NumeroTest methodsFor: 'tests' stamp: 'JS 5/5/2022 03:50:17'!
test23CanNotDivideEnteroByZero

	self 
		should: [ one / zero ]
		raise: Error
		withExceptionDo: [ :anError | self assert: Numero canNotDivideByZeroErrorDescription equals: anError messageText ]
	! !

!NumeroTest methodsFor: 'tests' stamp: 'JS 5/5/2022 03:50:32'!
test24CanNotDivideFraccionByZero

	self 
		should: [ oneHalf / zero ]
		raise: Error
		withExceptionDo: [ :anError | self assert: Numero canNotDivideByZeroErrorDescription equals: anError messageText ]
	! !

!NumeroTest methodsFor: 'tests' stamp: 'HernanWilkinson 5/7/2016 22:50'!
test25AFraccionCanNotBeZero

	self deny: oneHalf isZero! !

!NumeroTest methodsFor: 'tests' stamp: 'HernanWilkinson 5/7/2016 22:50'!
test26AFraccionCanNotBeOne

	self deny: oneHalf isOne! !

!NumeroTest methodsFor: 'tests' stamp: 'JS 5/5/2022 03:46:21'!
test27EnteroSubstractsEnteroCorrectly

	self assert: two equals: three - one! !

!NumeroTest methodsFor: 'tests' stamp: 'JS 5/5/2022 03:46:36'!
test28FraccionSubstractsFraccionCorrectly
	
	self assert: oneFifth equals: twoFifth - oneFifth! !

!NumeroTest methodsFor: 'tests' stamp: 'JS 5/5/2022 03:46:50'!
test29EnteroSubstractsFraccionCorrectly

	self assert: oneHalf equals: one - oneHalf! !

!NumeroTest methodsFor: 'tests' stamp: 'JS 5/5/2022 03:47:11'!
test30FraccionSubstractsEnteroCorrectly

	| sixFifth |
	
	sixFifth := (Entero with: 6) / (Entero with: 5).
	
	self assert: oneFifth equals: sixFifth - one! !

!NumeroTest methodsFor: 'tests' stamp: 'JS 5/5/2022 03:47:25'!
test31SubstractingFraccionesCanReturnAnEntero

	| threeHalfs |
	
	threeHalfs := (Entero with: 3) / (Entero with: 2).
	
	self assert: one equals: threeHalfs - oneHalf! !

!NumeroTest methodsFor: 'tests' stamp: 'JS 5/5/2022 03:47:44'!
test32SubstractingSameEnterosReturnsZero

	self assert: zero equals: one - one! !

!NumeroTest methodsFor: 'tests' stamp: 'JS 5/5/2022 03:47:59'!
test33SubstractingSameFraccionesReturnsZero

	self assert: zero equals: oneHalf - oneHalf! !

!NumeroTest methodsFor: 'tests' stamp: 'LV 9/28/2022 20:05:30'!
test34SubstractingAHigherValueToANumberReturnsANegativeNumber

	| negativeThreeHalfs |
	
	negativeThreeHalfs := (Entero with: -3) / (Entero with: 2).	

	self assert: negativeThreeHalfs equals: one - fiveHalfs! !

!NumeroTest methodsFor: 'tests' stamp: 'JS 5/5/2022 03:48:45'!
test35FibonacciZeroIsOne

	self assert: one equals: zero fibonacci! !

!NumeroTest methodsFor: 'tests' stamp: 'JS 5/5/2022 03:48:58'!
test36FibonacciOneIsOne

	self assert: one equals: one fibonacci! !

!NumeroTest methodsFor: 'tests' stamp: 'JS 5/5/2022 03:52:24'!
test37FibonacciEnteroReturnsAddingPreviousTwoFibonacciEnteros

	self assert: five equals: four fibonacci.
	self assert: three equals: three fibonacci. 
	self assert: five fibonacci equals: four fibonacci + three fibonacci! !

!NumeroTest methodsFor: 'tests' stamp: 'JS 5/5/2022 03:52:40'!
test38FibonacciNotDefinedForNegativeNumbers

	self 
		should: [negativeOne fibonacci]
		raise: Error
		withExceptionDo: [ :anError | self assert: Entero negativeFibonacciErrorDescription equals: anError messageText ]! !

!NumeroTest methodsFor: 'tests' stamp: 'JS 5/5/2022 03:52:17'!
test39NegationOfEnteroIsCorrect

	self assert: negativeTwo equals: two negated
		! !

!NumeroTest methodsFor: 'tests' stamp: 'JS 5/5/2022 03:53:27'!
test40NegationOfFraccionIsCorrect

	self assert: negativeOne / two equals: oneHalf negated ! !

!NumeroTest methodsFor: 'tests' stamp: 'NR 9/23/2018 23:50:11'!
test41SignIsCorrectlyAssignedToFractionWithTwoNegatives

	self assert: oneHalf equals: (negativeOne / negativeTwo)! !

!NumeroTest methodsFor: 'tests' stamp: 'NR 9/23/2018 23:50:17'!
test42SignIsCorrectlyAssignedToFractionWithNegativeDivisor

	self assert: oneHalf negated equals: (one / negativeTwo)! !


!NumeroTest methodsFor: 'setup' stamp: 'NR 9/23/2018 23:46:28'!
setUp

	zero := Entero with: 0.
	one := Entero with: 1.
	two := Entero with: 2.
	three:= Entero with: 3.
	four := Entero with: 4.
	five := Entero with: 5.
	eight := Entero with: 8.
	negativeOne := Entero with: -1.
	negativeTwo := Entero with: -2.
	
	oneHalf := one / two.
	oneFifth := one / five.
	twoFifth := two / five.
	twoTwentyfifth := two / (Entero with: 25).
	fiveHalfs := five / two.
	! !


!classDefinition: #Numero category: 'Numeros-Parte2-Ejercicio'!
Object subclass: #Numero
	instanceVariableNames: ''
	classVariableNames: ''
	poolDictionaries: ''
	category: 'Numeros-Parte2-Ejercicio'!

!Numero methodsFor: 'arithmetic operations' stamp: 'HernanWilkinson 5/7/2016 22:48'!
* aMultiplier

	self subclassResponsibility ! !

!Numero methodsFor: 'arithmetic operations' stamp: 'HernanWilkinson 5/7/2016 22:49'!
+ anAdder

	self subclassResponsibility ! !

!Numero methodsFor: 'arithmetic operations' stamp: 'NR 9/23/2018 22:21:28'!
- aSubtrahend

	self subclassResponsibility ! !

!Numero methodsFor: 'arithmetic operations' stamp: 'HernanWilkinson 5/7/2016 22:49'!
/ aDivisor

	self subclassResponsibility ! !

!Numero methodsFor: 'arithmetic operations' stamp: 'NR 9/23/2018 23:37:13'!
negated
	
	^self * (Entero with: -1)! !


!Numero methodsFor: 'testing' stamp: 'NR 9/23/2018 23:36:49'!
isNegative

	self subclassResponsibility ! !

!Numero methodsFor: 'testing' stamp: 'HernanWilkinson 5/7/2016 22:49'!
isOne

	self subclassResponsibility ! !

!Numero methodsFor: 'testing' stamp: 'HernanWilkinson 5/7/2016 22:49'!
isZero

	self subclassResponsibility ! !


!Numero methodsFor: 'private' stamp: 'HernanWilkinson 5/7/2016 22:48'!
invalidNumberType

	self error: self class invalidNumberTypeErrorDescription! !


!Numero methodsFor: 'arithmetic operations-private' stamp: 'LV 10/2/2022 22:15:54'!
add: aValue with: anotherValue

	^(aValue denominator * anotherValue  + aValue numerator) / aValue denominator.! !

!Numero methodsFor: 'arithmetic operations-private' stamp: 'LV 10/2/2022 19:12:10'!
addToEntero: anAdder
	
	self subclassResponsibility.! !

!Numero methodsFor: 'arithmetic operations-private' stamp: 'LV 10/2/2022 19:12:30'!
addToFraccion: anAdder

	self subclassResponsibility .! !

!Numero methodsFor: 'arithmetic operations-private' stamp: 'LV 10/2/2022 19:10:56'!
divideALaFraccion: aDivisor
	
	self subclassResponsibility .! !

!Numero methodsFor: 'arithmetic operations-private' stamp: 'LV 10/2/2022 19:06:42'!
divideAlEntero: aDivisor
	 
	self subclassResponsibility .! !

!Numero methodsFor: 'arithmetic operations-private' stamp: 'LV 10/2/2022 19:13:23'!
minusToEntero: aSubtrahend
	
	self subclassResponsibility .! !

!Numero methodsFor: 'arithmetic operations-private' stamp: 'LV 10/2/2022 19:13:06'!
minusToTheFraccion: aSubtrahend
	
	self subclassResponsibility .! !

!Numero methodsFor: 'arithmetic operations-private' stamp: 'LV 10/2/2022 22:18:31'!
multiplies:aValue with: anotherValue
	
	^ anotherValue * aValue numerator / aValue denominator.! !

!Numero methodsFor: 'arithmetic operations-private' stamp: 'LV 10/2/2022 19:13:48'!
multipliesToEntero: aMultiplier

	self subclassResponsibility .! !

!Numero methodsFor: 'arithmetic operations-private' stamp: 'LV 10/2/2022 19:14:01'!
multipliesToFraccion: anAdder

	self subclassResponsibility.! !

"-- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- "!

!classDefinition: 'Numero class' category: 'Numeros-Parte2-Ejercicio'!
Numero class
	instanceVariableNames: ''!

!Numero class methodsFor: 'error descriptions' stamp: 'NR 5/7/2020 17:47:38'!
canNotDivideByZeroErrorDescription

	^'No se puede Dividir por Cero'! !

!Numero class methodsFor: 'error descriptions' stamp: 'NR 5/7/2020 17:46:56'!
invalidNumberTypeErrorDescription
	^ 'Tipo de Número Inválido'! !


!classDefinition: #Entero category: 'Numeros-Parte2-Ejercicio'!
Numero subclass: #Entero
	instanceVariableNames: 'value'
	classVariableNames: ''
	poolDictionaries: ''
	category: 'Numeros-Parte2-Ejercicio'!

!Entero methodsFor: 'arithmetic operations' stamp: 'LV 10/2/2022 19:19:35'!
* aMultiplier 
	
	^aMultiplier multipliesToEntero: self .! !

!Entero methodsFor: 'arithmetic operations' stamp: 'LV 10/2/2022 19:12:10'!
+ anAdder 
	
	^anAdder addToEntero: self.

						
						
						
	
	
! !

!Entero methodsFor: 'arithmetic operations' stamp: 'LV 10/2/2022 19:13:23'!
- aSubtrahend 
	
	^ aSubtrahend minusToEntero: self.
	
	
	! !

!Entero methodsFor: 'arithmetic operations' stamp: 'LV 10/2/2022 19:06:42'!
/ aDivisor 
	
	^aDivisor divideAlEntero: self.! !

!Entero methodsFor: 'arithmetic operations' stamp: 'LV 10/2/2022 19:21:26'!
fibonacci

	self subclassResponsibility .
		! !


!Entero methodsFor: 'comparing' stamp: 'HernanWilkinson 5/7/2016 21:01'!
= anObject

	^(anObject isKindOf: self class) and: [ value = anObject integerValue ]! !

!Entero methodsFor: 'comparing' stamp: 'HernanWilkinson 5/7/2016 20:17'!
hash

	^value hash! !


!Entero methodsFor: 'initialization' stamp: 'JS 5/5/2022 03:55:37'!
initializeWith: aValue 
	
	value := aValue! !


!Entero methodsFor: 'accessing' stamp: 'LV 10/2/2022 19:20:48'!
integerValue
	
	"Usamos integerValue en vez de value para que no haya problemas con el mensaje value implementado en Object - Hernan"
	
	^value! !


!Entero methodsFor: 'printing' stamp: 'HAW 9/24/2018 08:53:19'!
printOn: aStream

	aStream print: value ! !


!Entero methodsFor: 'testing' stamp: 'NR 9/23/2018 22:17:55'!
isNegative
	
	^value < 0! !

!Entero methodsFor: 'testing' stamp: 'HernanWilkinson 5/7/2016 20:14'!
isOne
	
	^value = 1! !

!Entero methodsFor: 'testing' stamp: 'HernanWilkinson 5/7/2016 20:12'!
isZero
	
	^value = 0! !


!Entero methodsFor: 'arithmetic operations - private' stamp: 'HernanWilkinson 5/7/2016 21:55'!
// aDivisor 
	
	^self class with: value // aDivisor integerValue! !

!Entero methodsFor: 'arithmetic operations - private' stamp: 'LV 10/2/2022 19:15:31'!
addToEntero: anAdder

	^self integerAddInteger: anAdder.
! !

!Entero methodsFor: 'arithmetic operations - private' stamp: 'LV 10/2/2022 22:15:54'!
addToFraccion: anAdder

	^ self add: anAdder with: self .
	! !

!Entero methodsFor: 'arithmetic operations - private' stamp: 'LV 10/2/2022 19:10:56'!
divideALaFraccion: aDivisor

	^self integerDividesFraction: aDivisor! !

!Entero methodsFor: 'arithmetic operations - private' stamp: 'LV 10/2/2022 19:06:42'!
divideAlEntero: aDivisor

	^ self integerDividesInteger: aDivisor! !

!Entero methodsFor: 'arithmetic operations - private' stamp: 'HernanWilkinson 5/7/2016 21:00'!
greatestCommonDivisorWith: anEntero 
	
	^self class with: (value gcd: anEntero integerValue)! !

!Entero methodsFor: 'arithmetic operations - private' stamp: 'LV 10/2/2022 19:15:31'!
integerAddInteger: anAdder
		
	^self  class with: value + anAdder integerValue.! !

!Entero methodsFor: 'arithmetic operations - private' stamp: 'LV 10/1/2022 11:57:05'!
integerDividesFraction: aDivisor
	
	^ aDivisor numerator / (self * aDivisor denominator).
	
	
	! !

!Entero methodsFor: 'arithmetic operations - private' stamp: 'LV 10/1/2022 11:50:10'!
integerDividesInteger:aDivisor
	
	^ Fraccion with: aDivisor over: self.! !

!Entero methodsFor: 'arithmetic operations - private' stamp: 'LV 10/1/2022 10:21:52'!
integerMinusFraction: aSubtrahend
	 
	^  aSubtrahend numerator - (aSubtrahend denominator * self) / aSubtrahend denominator.! !

!Entero methodsFor: 'arithmetic operations - private' stamp: 'LV 10/1/2022 11:47:26'!
integerMinusInteger: aSubtrahend

	^ self class with: aSubtrahend integerValue - value.! !

!Entero methodsFor: 'arithmetic operations - private' stamp: 'LV 10/1/2022 11:46:32'!
integerMultipliesInteger: aMultiplier

	^self class with: value * aMultiplier integerValue.! !

!Entero methodsFor: 'arithmetic operations - private' stamp: 'LV 10/2/2022 19:13:23'!
minusToEntero: aSubtrahend

	^ self integerMinusInteger: aSubtrahend ! !

!Entero methodsFor: 'arithmetic operations - private' stamp: 'LV 10/2/2022 19:13:06'!
minusToTheFraccion: aSubtrahend
	
	^self integerMinusFraction: aSubtrahend
	! !

!Entero methodsFor: 'arithmetic operations - private' stamp: 'LV 10/2/2022 19:13:48'!
multipliesToEntero: aMultiplier
	
	^self integerMultipliesInteger: aMultiplier. ! !

!Entero methodsFor: 'arithmetic operations - private' stamp: 'LV 10/2/2022 22:19:19'!
multipliesToFraccion: aMultiplier

	^self multiplies: aMultiplier with: self.! !

"-- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- "!

!classDefinition: 'Entero class' category: 'Numeros-Parte2-Ejercicio'!
Entero class
	instanceVariableNames: ''!

!Entero class methodsFor: 'instance creation' stamp: 'NR 4/8/2019 02:57:57'!
negativeFibonacciErrorDescription
	^ ' Fibonacci no está definido aquí para Enteros Negativos'! !

!Entero class methodsFor: 'instance creation' stamp: 'LV 10/2/2022 21:56:01'!
with: aValue 
	
	| enteroSubclass |
	
	"Esta verificacion esta puesta por si se equivocan y quieren crear un Entero pasando otra cosa que un Integer - Hernan"
	
	aValue isInteger ifFalse: [self error: 'aValue debe ser anInteger'].
	
	enteroSubclass  := Entero subclasses detect: [:enteroSubclasses | enteroSubclasses  isThisValue: aValue].
	
	^enteroSubclass  new initializeWith: aValue.
	
	
	
	! !


!classDefinition: #Negative category: 'Numeros-Parte2-Ejercicio'!
Entero subclass: #Negative
	instanceVariableNames: ''
	classVariableNames: ''
	poolDictionaries: ''
	category: 'Numeros-Parte2-Ejercicio'!

!Negative methodsFor: 'arithmetic operation' stamp: 'LV 10/2/2022 12:06:10'!
fibonacci

	^self error: Entero negativeFibonacciErrorDescription! !

"-- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- "!

!classDefinition: 'Negative class' category: 'Numeros-Parte2-Ejercicio'!
Negative class
	instanceVariableNames: ''!

!Negative class methodsFor: 'comparing' stamp: 'LV 10/2/2022 21:55:11'!
isThisValue: aValue

	^(aValue < 0).! !


!classDefinition: #One category: 'Numeros-Parte2-Ejercicio'!
Entero subclass: #One
	instanceVariableNames: ''
	classVariableNames: ''
	poolDictionaries: ''
	category: 'Numeros-Parte2-Ejercicio'!

!One methodsFor: 'arithmetic operation' stamp: 'LV 10/2/2022 12:06:33'!
fibonacci
	
	^self.! !

"-- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- "!

!classDefinition: 'One class' category: 'Numeros-Parte2-Ejercicio'!
One class
	instanceVariableNames: ''!

!One class methodsFor: 'comparing' stamp: 'lb 10/2/2022 20:42:23'!
isThisValue: aValue

	^(aValue = 1).! !


!classDefinition: #PositiveHigerThanOne category: 'Numeros-Parte2-Ejercicio'!
Entero subclass: #PositiveHigerThanOne
	instanceVariableNames: ''
	classVariableNames: ''
	poolDictionaries: ''
	category: 'Numeros-Parte2-Ejercicio'!

!PositiveHigerThanOne methodsFor: 'arithmetic operation' stamp: 'LV 10/2/2022 12:07:26'!
fibonacci
	
	| one two |
	
	one := Entero with: 1.
	two := Entero with: 2.
	
	^ (self - one) fibonacci + (self - two) fibonacci! !

"-- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- "!

!classDefinition: 'PositiveHigerThanOne class' category: 'Numeros-Parte2-Ejercicio'!
PositiveHigerThanOne class
	instanceVariableNames: ''!

!PositiveHigerThanOne class methodsFor: 'comparing' stamp: 'lb 10/2/2022 20:42:31'!
isThisValue: aValue

	^(aValue > 1).! !


!classDefinition: #Zero category: 'Numeros-Parte2-Ejercicio'!
Entero subclass: #Zero
	instanceVariableNames: ''
	classVariableNames: ''
	poolDictionaries: ''
	category: 'Numeros-Parte2-Ejercicio'!

!Zero methodsFor: 'arithmetic operation' stamp: 'LV 10/2/2022 12:06:45'!
fibonacci
	
	^Entero with: 1.! !

"-- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- "!

!classDefinition: 'Zero class' category: 'Numeros-Parte2-Ejercicio'!
Zero class
	instanceVariableNames: ''!

!Zero class methodsFor: 'comparing' stamp: 'lb 10/2/2022 20:42:41'!
isThisValue: aValue

	^(aValue = 0).! !


!classDefinition: #Fraccion category: 'Numeros-Parte2-Ejercicio'!
Numero subclass: #Fraccion
	instanceVariableNames: 'numerator denominator'
	classVariableNames: ''
	poolDictionaries: ''
	category: 'Numeros-Parte2-Ejercicio'!

!Fraccion methodsFor: 'accessing' stamp: 'HernanWilkinson 5/7/2016 21:56'!
denominator

	^ denominator! !

!Fraccion methodsFor: 'accessing' stamp: 'HernanWilkinson 5/7/2016 21:56'!
numerator

	^ numerator! !


!Fraccion methodsFor: 'arithmetic operations' stamp: 'LV 10/2/2022 19:14:01'!
* aMultiplier 
	
	
	^aMultiplier multipliesToFraccion: self.
	
	
	! !

!Fraccion methodsFor: 'arithmetic operations' stamp: 'LV 10/2/2022 19:12:30'!
+ anAdder 
	
	^anAdder addToFraccion: self.
	
	
	
							
							! !

!Fraccion methodsFor: 'arithmetic operations' stamp: 'LV 10/2/2022 19:13:06'!
- aSubtrahend 
	
	^ aSubtrahend minusToTheFraccion: self.

	! !

!Fraccion methodsFor: 'arithmetic operations' stamp: 'LV 10/2/2022 19:10:56'!
/ aDivisor 
	
	
	^ aDivisor divideALaFraccion: self.
			
	
			! !


!Fraccion methodsFor: 'comparing' stamp: 'HernanWilkinson 5/7/2016 20:42'!
= anObject

	^(anObject isKindOf: self class) and: [ (numerator * anObject denominator) = (denominator * anObject numerator) ]! !

!Fraccion methodsFor: 'comparing' stamp: 'HernanWilkinson 5/7/2016 20:50'!
hash

	^(numerator hash / denominator hash) hash! !


!Fraccion methodsFor: 'initialization' stamp: 'HernanWilkinson 5/7/2016 22:54'!
initializeWith: aNumerator over: aDenominator

	"Estas precondiciones estan por si se comenten errores en la implementacion - Hernan"
	aNumerator isZero ifTrue: [ self error: 'una fraccion no puede ser cero' ].
	aDenominator isOne ifTrue: [ self error: 'una fraccion no puede tener denominador 1 porque sino es un entero' ].
	
	numerator := aNumerator.
	denominator := aDenominator ! !


!Fraccion methodsFor: 'printing' stamp: 'HAW 9/24/2018 08:54:46'!
printOn: aStream

	aStream 
		print: numerator;
		nextPut: $/;
		print: denominator ! !


!Fraccion methodsFor: 'testing' stamp: 'NR 9/23/2018 23:41:38'!
isNegative
	
	^numerator < 0! !

!Fraccion methodsFor: 'testing' stamp: 'HernanWilkinson 5/7/2016 22:51'!
isOne
	
	^false! !

!Fraccion methodsFor: 'testing' stamp: 'HernanWilkinson 5/7/2016 22:51'!
isZero
	
	^false! !


!Fraccion methodsFor: 'arithmetic operations-private' stamp: 'LV 10/3/2022 16:09:00'!
addOrMinus: theOperationChoosen toTheFraccion: aFraccion

		
	| newNumerator newDenominator |
	
	newNumerator := theOperationChoosen value.
	newDenominator := denominator * aFraccion denominator.
								
	^newNumerator / newDenominator.! !

!Fraccion methodsFor: 'arithmetic operations-private' stamp: 'LV 10/2/2022 22:15:54'!
addToEntero: anAdder

	 ^self add: self  with: anAdder . ! !

!Fraccion methodsFor: 'arithmetic operations-private' stamp: 'LV 10/2/2022 19:23:26'!
addToFraccion: anAdder

	^self fraccionAddFraccion: anAdder.! !

!Fraccion methodsFor: 'arithmetic operations-private' stamp: 'LV 10/2/2022 19:23:44'!
divideALaFraccion: aDivisor
	
	^self fraccionDividesFraccion: aDivisor.! !

!Fraccion methodsFor: 'arithmetic operations-private' stamp: 'LV 10/2/2022 19:23:58'!
divideAlEntero: aDivisor
	
	^self fraccionDividesInteger: aDivisor
	
	! !

!Fraccion methodsFor: 'arithmetic operations-private' stamp: 'LV 10/3/2022 16:05:54'!
fraccionAddFraccion: unaFraccion
	
	^self addOrMinus: [(numerator * unaFraccion denominator) + (denominator * unaFraccion numerator)] toTheFraccion: unaFraccion .
	
	
	! !

!Fraccion methodsFor: 'arithmetic operations-private' stamp: 'LV 10/2/2022 19:23:44'!
fraccionDividesFraccion: aDivisor
	
	^(aDivisor numerator * denominator ) / ( aDivisor denominator * numerator ).! !

!Fraccion methodsFor: 'arithmetic operations-private' stamp: 'LV 10/2/2022 19:23:58'!
fraccionDividesInteger: aDivisor
	
	^ denominator * aDivisor /  numerator.! !

!Fraccion methodsFor: 'arithmetic operations-private' stamp: 'LV 10/3/2022 16:05:54'!
fraccionMinusFraccion: unaFraccion

	^self addOrMinus: [(denominator * unaFraccion numerator) - (numerator * unaFraccion denominator)] toTheFraccion: unaFraccion .! !

!Fraccion methodsFor: 'arithmetic operations-private' stamp: 'LV 10/2/2022 19:24:25'!
fraccionMinusInteger: aSubtrahend

	^ (aSubtrahend  * denominator) - numerator  /  denominator.! !

!Fraccion methodsFor: 'arithmetic operations-private' stamp: 'LV 10/2/2022 19:25:52'!
fraccionMultipliesFraccion: aMultiplier
	
	^(numerator * aMultiplier numerator) / (denominator * aMultiplier denominator).! !

!Fraccion methodsFor: 'arithmetic operations-private' stamp: 'LV 10/2/2022 19:24:25'!
minusToEntero: aSubtrahend
	
	^self fraccionMinusInteger: aSubtrahend.! !

!Fraccion methodsFor: 'arithmetic operations-private' stamp: 'LV 10/2/2022 19:24:12'!
minusToTheFraccion: aSubtrahend
	
	^self fraccionMinusFraccion: aSubtrahend .! !

!Fraccion methodsFor: 'arithmetic operations-private' stamp: 'LV 10/2/2022 22:19:53'!
multipliesToEntero: aMultiplier

	^self multiplies: self  with: aMultiplier.! !

!Fraccion methodsFor: 'arithmetic operations-private' stamp: 'LV 10/2/2022 19:25:52'!
multipliesToFraccion: aMultiplier
	
	^self fraccionMultipliesFraccion: aMultiplier .! !

"-- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- "!

!classDefinition: 'Fraccion class' category: 'Numeros-Parte2-Ejercicio'!
Fraccion class
	instanceVariableNames: ''!

!Fraccion class methodsFor: 'intance creation' stamp: 'NR 9/23/2018 23:45:19'!
with: aDividend over: aDivisor

	| greatestCommonDivisor numerator denominator |
	
	aDivisor isZero ifTrue: [ self error: self canNotDivideByZeroErrorDescription ].
	aDividend isZero ifTrue: [ ^aDividend ].
	
	aDivisor isNegative ifTrue:[ ^aDividend negated / aDivisor negated].
	
	greatestCommonDivisor := aDividend greatestCommonDivisorWith: aDivisor. 
	numerator := aDividend // greatestCommonDivisor.
	denominator := aDivisor // greatestCommonDivisor.
	
	denominator isOne ifTrue: [ ^numerator ].

	^self new initializeWith: numerator over: denominator
	! !
