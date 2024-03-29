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

!NumeroTest methodsFor: 'tests' stamp: 'HernanWilkinson 5/7/2016 20:14'!
test05EnteroAddsWithEnteroCorrectly

	self assert: one + one equals: two! !

!NumeroTest methodsFor: 'tests' stamp: 'HernanWilkinson 5/7/2016 20:18'!
test06EnteroMultipliesWithEnteroCorrectly

	self assert: two * two equals: four! !

!NumeroTest methodsFor: 'tests' stamp: 'HernanWilkinson 5/7/2016 20:20'!
test07EnteroDividesEnteroCorrectly

	self assert: two / two equals: one! !

!NumeroTest methodsFor: 'tests' stamp: 'HernanWilkinson 5/7/2016 20:38'!
test08FraccionAddsWithFraccionCorrectly
"
    La suma de fracciones es:
	 
	a/b + c/d = (a.d + c.b) / (b.d)
	 
	SI ESTAN PENSANDO EN LA REDUCCION DE FRACCIONES NO SE PREOCUPEN!!
	TODAVIA NO SE ESTA TESTEANDO ESE CASO
"
	| sevenTenths |

	sevenTenths := (Entero with: 7) / (Entero with: 10).

	self assert: oneFifth + oneHalf equals: sevenTenths! !

!NumeroTest methodsFor: 'tests' stamp: 'HernanWilkinson 5/7/2016 20:52'!
test09FraccionMultipliesWithFraccionCorrectly
"
    La multiplicacion de fracciones es:
	 
	(a/b) * (c/d) = (a.c) / (b.d)
"

	self assert: oneFifth * twoFifth equals: twoTwentyfifth! !

!NumeroTest methodsFor: 'tests' stamp: 'HernanWilkinson 5/7/2016 20:56'!
test10FraccionDividesFraccionCorrectly
"
    La division de fracciones es:
	 
	(a/b) / (c/d) = (a.d) / (b.c)
"

	self assert: oneHalf / oneFifth equals: fiveHalfs! !

!NumeroTest methodsFor: 'tests' stamp: 'HernanWilkinson 5/7/2016 21:07'!
test11EnteroAddsFraccionCorrectly
"
	Ahora empieza la diversion!!
"

	self assert: one + oneFifth equals: (Entero with: 6) / (Entero with: 5)! !

!NumeroTest methodsFor: 'tests' stamp: 'HernanWilkinson 5/7/2016 21:07'!
test12FraccionAddsEnteroCorrectly

	self assert: oneFifth + one equals: (Entero with: 6) / (Entero with: 5)! !

!NumeroTest methodsFor: 'tests' stamp: 'HernanWilkinson 5/7/2016 21:50'!
test13EnteroMultipliesFraccionCorrectly

	self assert: two * oneFifth equals: twoFifth ! !

!NumeroTest methodsFor: 'tests' stamp: 'HernanWilkinson 5/7/2016 21:52'!
test14FraccionMultipliesEnteroCorrectly

	self assert: oneFifth * two equals: twoFifth ! !

!NumeroTest methodsFor: 'tests' stamp: 'HernanWilkinson 5/7/2016 21:57'!
test15EnteroDividesFraccionCorrectly

	self assert: one / twoFifth equals: fiveHalfs  ! !

!NumeroTest methodsFor: 'tests' stamp: 'HernanWilkinson 5/7/2016 21:59'!
test16FraccionDividesEnteroCorrectly

	self assert: twoFifth / five equals: twoTwentyfifth ! !

!NumeroTest methodsFor: 'tests' stamp: 'HernanWilkinson 5/7/2016 22:38'!
test17AFraccionCanBeEqualToAnEntero

	self assert: two equals: four / two! !

!NumeroTest methodsFor: 'tests' stamp: 'HernanWilkinson 5/7/2016 22:39'!
test18AparentFraccionesAreEqual

	self assert: oneHalf equals: two / four! !

!NumeroTest methodsFor: 'tests' stamp: 'HernanWilkinson 5/7/2016 22:40'!
test19AddingFraccionesCanReturnAnEntero

	self assert: oneHalf + oneHalf equals: one! !

!NumeroTest methodsFor: 'tests' stamp: 'HernanWilkinson 5/7/2016 22:42'!
test20MultiplyingFraccionesCanReturnAnEntero

	self assert: (two/five) * (five/two) equals: one! !

!NumeroTest methodsFor: 'tests' stamp: 'HernanWilkinson 5/7/2016 22:42'!
test21DividingFraccionesCanReturnAnEntero

	self assert: oneHalf / oneHalf equals: one! !

!NumeroTest methodsFor: 'tests' stamp: 'HernanWilkinson 5/7/2016 22:43'!
test22DividingEnterosCanReturnAFraccion

	self assert: two / four equals: oneHalf! !

!NumeroTest methodsFor: 'tests' stamp: 'HernanWilkinson 5/7/2016 22:46'!
test23CanNotDivideEnteroByZero

	self 
		should: [ one / zero ]
		raise: Error
		withExceptionDo: [ :anError | self assert: anError messageText equals: Numero canNotDivideByZeroErrorDescription ]
	! !

!NumeroTest methodsFor: 'tests' stamp: 'HernanWilkinson 5/7/2016 22:46'!
test24CanNotDivideFraccionByZero

	self 
		should: [ oneHalf / zero ]
		raise: Error
		withExceptionDo: [ :anError | self assert: anError messageText equals: Numero canNotDivideByZeroErrorDescription ]
	! !

!NumeroTest methodsFor: 'tests' stamp: 'HernanWilkinson 5/7/2016 22:50'!
test25AFraccionCanNotBeZero

	self deny: oneHalf isZero! !

!NumeroTest methodsFor: 'tests' stamp: 'HernanWilkinson 5/7/2016 22:50'!
test26AFraccionCanNotBeOne

	self deny: oneHalf isOne! !

!NumeroTest methodsFor: 'tests' stamp: 'NR 5/7/2020 17:46:14'!
test27EnteroSubstractsEnteroCorrectly

	self assert: three - one equals: two! !

!NumeroTest methodsFor: 'tests' stamp: 'NR 9/23/2018 23:47:41'!
test28FraccionSubstractsFraccionCorrectly
	
	self assert: twoFifth - oneFifth equals: oneFifth.! !

!NumeroTest methodsFor: 'tests' stamp: 'NR 9/23/2018 23:48:00'!
test29EnteroSubstractsFraccionCorrectly

	self assert: one - oneHalf equals: oneHalf! !

!NumeroTest methodsFor: 'tests' stamp: 'HAW 9/24/2018 08:48:05'!
test30FraccionSubstractsEnteroCorrectly

	| sixFifth |
	
	sixFifth := (Entero with: 6) / (Entero with: 5).
	
	self assert: sixFifth - one equals: oneFifth! !

!NumeroTest methodsFor: 'tests' stamp: 'HAW 9/24/2018 08:48:08'!
test31SubstractingFraccionesCanReturnAnEntero

	| threeHalfs |
	
	threeHalfs := (Entero with: 3) / (Entero with: 2).
	
	self assert: threeHalfs - oneHalf equals: one.! !

!NumeroTest methodsFor: 'tests' stamp: 'NR 9/23/2018 23:48:48'!
test32SubstractingSameEnterosReturnsZero

	self assert: one - one equals: zero.! !

!NumeroTest methodsFor: 'tests' stamp: 'NR 9/23/2018 23:49:01'!
test33SubstractingSameFraccionesReturnsZero

	self assert: oneHalf - oneHalf equals: zero.! !

!NumeroTest methodsFor: 'tests' stamp: 'HAW 9/24/2018 08:48:14'!
test34SubstractingAHigherValueToANumberReturnsANegativeNumber

	| negativeThreeHalfs |
	
	negativeThreeHalfs := (Entero with: -3) / (Entero with: 2).	

	self assert: one - fiveHalfs equals: negativeThreeHalfs.! !

!NumeroTest methodsFor: 'tests' stamp: 'NR 9/23/2018 23:49:23'!
test35FibonacciZeroIsOne

	self assert: zero fibonacci equals: one! !

!NumeroTest methodsFor: 'tests' stamp: 'NR 9/23/2018 23:49:32'!
test36FibonacciOneIsOne

	self assert: one fibonacci equals: one! !

!NumeroTest methodsFor: 'tests' stamp: 'NR 9/23/2018 23:49:39'!
test37FibonacciEnteroReturnsAddingPreviousTwoFibonacciEnteros

	self assert: four fibonacci equals: five.
	self assert: three fibonacci equals: three. 
	self assert: five fibonacci equals: four fibonacci + three fibonacci.! !

!NumeroTest methodsFor: 'tests' stamp: 'NR 9/23/2018 23:49:47'!
test38FibonacciNotDefinedForNegativeNumbers

	self 
		should: [negativeOne fibonacci]
		raise: Error
		withExceptionDo: [ :anError | self assert: anError messageText equals: Entero negativeFibonacciErrorDescription ].! !

!NumeroTest methodsFor: 'tests' stamp: 'NR 9/23/2018 23:49:55'!
test39NegationOfEnteroIsCorrect

	self assert: two negated equals: negativeTwo.
		! !

!NumeroTest methodsFor: 'tests' stamp: 'NR 9/23/2018 23:50:03'!
test40NegationOfFraccionIsCorrect

	self assert: oneHalf negated equals: negativeOne / two.! !

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

!Numero methodsFor: 'arithmetic operations' stamp: 'SDM 10/25/2021 18:22:53'!
decrement

	^(self - One new)! !

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

"-- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- "!

!classDefinition: 'Numero class' category: 'Numeros-Parte2-Ejercicio'!
Numero class
	instanceVariableNames: ''!

!Numero class methodsFor: 'error descriptions' stamp: 'NR 5/7/2020 17:47:38'!
canNotDivideByZeroErrorDescription

	^'No se puede Dividir por Cero'! !

!Numero class methodsFor: 'error descriptions' stamp: 'NR 5/7/2020 17:46:56'!
invalidNumberTypeErrorDescription
	^ 'Tipo de N�mero Inv�lido'! !


!classDefinition: #Entero category: 'Numeros-Parte2-Ejercicio'!
Numero subclass: #Entero
	instanceVariableNames: 'value'
	classVariableNames: ''
	poolDictionaries: ''
	category: 'Numeros-Parte2-Ejercicio'!

!Entero methodsFor: 'arithmetic operations' stamp: 'SDM 10/25/2021 12:20:25'!
* aMultiplier

	^aMultiplier beMultipliedByAnEntero: self
	! !

!Entero methodsFor: 'arithmetic operations' stamp: 'SDM 10/25/2021 12:20:30'!
+ anAdder 	
	
	^anAdder beAddedToAnEntero: self
! !

!Entero methodsFor: 'arithmetic operations' stamp: 'SDM 10/25/2021 12:20:34'!
- aSubtrahend
 
	^aSubtrahend beSubstractedFromAnEntero: self! !

!Entero methodsFor: 'arithmetic operations' stamp: 'SDM 10/25/2021 12:20:39'!
/ aDivisor

	^aDivisor divideAnEntero: self! !

!Entero methodsFor: 'arithmetic operations' stamp: 'SDM 10/25/2021 12:20:51'!
fibonacci

	self isNegative ifTrue: [self error: Entero negativeFibonacciErrorDescription ].	
	
	^(self decrement) fibonacci + (self decrement decrement) fibonacci! !


!Entero methodsFor: 'comparing' stamp: 'HernanWilkinson 5/7/2016 21:01'!
= anObject

	^(anObject isKindOf: self class) and: [ value = anObject integerValue ]! !

!Entero methodsFor: 'comparing' stamp: 'HernanWilkinson 5/7/2016 20:17'!
hash

	^value hash! !


!Entero methodsFor: 'initialization' stamp: 'HernanWilkinson 5/7/2016 20:09'!
initalizeWith: aValue 
	
	value := aValue! !


!Entero methodsFor: 'accessing' stamp: 'HernanWilkinson 5/7/2016 21:02'!
integerValue

	"Usamos integerValue en vez de value para que no haya problemas con el mensaje value implementado en Object - Hernan"
	
	^value! !


!Entero methodsFor: 'printing' stamp: 'HAW 9/24/2018 08:53:19'!
printOn: aStream

	aStream print: value ! !


!Entero methodsFor: 'testing' stamp: 'NR 9/23/2018 22:17:55'!
isNegative
	
	^value < 0! !

!Entero methodsFor: 'testing' stamp: 'SDM 10/25/2021 18:24:54'!
isOne
	
	^false! !

!Entero methodsFor: 'testing' stamp: 'SDM 10/25/2021 18:25:03'!
isZero
	
	^false! !


!Entero methodsFor: 'arithmetic operations - private' stamp: 'HernanWilkinson 5/7/2016 21:55'!
// aDivisor 
	
	^self class with: value // aDivisor integerValue! !

!Entero methodsFor: 'arithmetic operations - private' stamp: 'SDM 10/25/2021 12:21:26'!
beAddedToAFraccion: anAugend
	
	^self + anAugend! !

!Entero methodsFor: 'arithmetic operations - private' stamp: 'SDM 10/25/2021 12:21:36'!
beAddedToAnEntero: anAugend
	
	^Entero with: anAugend integerValue + self integerValue! !

!Entero methodsFor: 'arithmetic operations - private' stamp: 'SDM 10/25/2021 12:21:42'!
beMultipliedByAFraccion: aMultiplicand
	
	^self * aMultiplicand! !

!Entero methodsFor: 'arithmetic operations - private' stamp: 'SDM 10/25/2021 12:21:46'!
beMultipliedByAnEntero: aMultiplicand
	
	^Entero with: aMultiplicand integerValue * self integerValue! !

!Entero methodsFor: 'arithmetic operations - private' stamp: 'SDM 10/25/2021 12:21:50'!
beSubstractedFromAFraccion: aMinuend

	^(self - aMinuend) negated! !

!Entero methodsFor: 'arithmetic operations - private' stamp: 'SDM 10/25/2021 12:21:53'!
beSubstractedFromAnEntero: aMinuend

	^Entero with: aMinuend integerValue - self integerValue! !

!Entero methodsFor: 'arithmetic operations - private' stamp: 'SDM 10/25/2021 12:21:57'!
divideAFraccion: aDividend

	| newDenominator |
	
	newDenominator := self value * aDividend denominator.
	
	^aDividend numerator / newDenominator! !

!Entero methodsFor: 'arithmetic operations - private' stamp: 'SDM 10/25/2021 12:22:00'!
divideAnEntero: aDividend

	^Fraccion with: aDividend value over: self value! !

!Entero methodsFor: 'arithmetic operations - private' stamp: 'HernanWilkinson 5/7/2016 21:00'!
greatestCommonDivisorWith: anEntero 
	
	^self class with: (value gcd: anEntero integerValue)! !

"-- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- "!

!classDefinition: 'Entero class' category: 'Numeros-Parte2-Ejercicio'!
Entero class
	instanceVariableNames: ''!

!Entero class methodsFor: 'instance creation' stamp: 'NR 4/8/2019 02:57:57'!
negativeFibonacciErrorDescription
	^ ' Fibonacci no est� definido aqu� para Enteros Negativos'! !

!Entero class methodsFor: 'instance creation' stamp: 'Br 10/25/2021 07:06:26'!
with: aValue 
	
	"Esta verificacion esta puesta por si se equivocan y quieren crear un Entero pasando otra cosa que un Integer - Hernan"
	aValue isInteger ifFalse: [  self error: 'aValue debe ser anInteger' ].
	(aValue = 0) ifTrue: [^Zero new].
	(aValue = 1) ifTrue: [^One new].
	
	^self new initalizeWith: aValue! !


!classDefinition: #One category: 'Numeros-Parte2-Ejercicio'!
Entero subclass: #One
	instanceVariableNames: ''
	classVariableNames: ''
	poolDictionaries: ''
	category: 'Numeros-Parte2-Ejercicio'!

!One methodsFor: 'testing' stamp: 'SDM 10/25/2021 12:23:02'!
isNegative
	
	^false! !

!One methodsFor: 'testing' stamp: 'SDM 10/25/2021 12:23:07'!
isOne
	
	^true! !

!One methodsFor: 'testing' stamp: 'SDM 10/25/2021 12:23:12'!
isZero
	
	^false! !


!One methodsFor: 'arithmetic operations - private' stamp: 'SDM 10/25/2021 12:22:38'!
beMultipliedByAFraccion: aMultiplicand
	
	^aMultiplicand! !

!One methodsFor: 'arithmetic operations - private' stamp: 'SDM 10/25/2021 12:22:47'!
beMultipliedByAnEntero: aMultiplicand
	
	^aMultiplicand! !

!One methodsFor: 'arithmetic operations - private' stamp: 'SDM 10/25/2021 12:22:51'!
divideAFraccion: aDividend

	^aDividend ! !

!One methodsFor: 'arithmetic operations - private' stamp: 'SDM 10/25/2021 12:22:57'!
divideAnEntero: aDividend
	
	^aDividend! !


!One methodsFor: 'arithmetic operations' stamp: 'SDM 10/25/2021 12:22:21'!
* aMultiplier

	^aMultiplier
	! !

!One methodsFor: 'arithmetic operations' stamp: 'SDM 10/25/2021 12:22:25'!
fibonacci

	^self! !


!One methodsFor: 'initialization' stamp: 'SDM 10/25/2021 12:22:32'!
initialize

	value := 1! !


!classDefinition: #Zero category: 'Numeros-Parte2-Ejercicio'!
Entero subclass: #Zero
	instanceVariableNames: ''
	classVariableNames: ''
	poolDictionaries: ''
	category: 'Numeros-Parte2-Ejercicio'!

!Zero methodsFor: 'arithmetic operations' stamp: 'SDM 10/25/2021 12:23:22'!
* aMultiplier

	^Zero new
	! !

!Zero methodsFor: 'arithmetic operations' stamp: 'Br 10/25/2021 05:49:00'!
+ anAdder 	
	
	^anAdder! !

!Zero methodsFor: 'arithmetic operations' stamp: 'Br 10/25/2021 06:42:28'!
- aSubtrahend
 
	^aSubtrahend negated ! !

!Zero methodsFor: 'arithmetic operations' stamp: 'SDM 10/25/2021 12:23:30'!
/ aDivisor

	^Zero new! !

!Zero methodsFor: 'arithmetic operations' stamp: 'SDM 10/25/2021 12:23:35'!
fibonacci

	^One new! !


!Zero methodsFor: 'testing' stamp: 'Br 10/25/2021 06:04:10'!
isNegative
	
	^false! !

!Zero methodsFor: 'testing' stamp: 'Br 10/25/2021 06:04:21'!
isOne
	
	^false! !

!Zero methodsFor: 'testing' stamp: 'SDM 10/25/2021 12:23:43'!
isZero
	
	^true! !


!Zero methodsFor: 'arithmetic operations - private' stamp: 'Br 10/25/2021 06:05:39'!
beAddedToAFraccion: anAugend
	
	^anAugend! !

!Zero methodsFor: 'arithmetic operations - private' stamp: 'Br 10/25/2021 06:05:53'!
beAddedToAnEntero: anAugend
	
	^anAugend ! !

!Zero methodsFor: 'arithmetic operations - private' stamp: 'SDM 10/25/2021 12:23:51'!
beMultipliedByAFraccion: aMultiplicand
	
	^Zero new! !

!Zero methodsFor: 'arithmetic operations - private' stamp: 'SDM 10/25/2021 12:23:56'!
beMultipliedByAnEntero: aMultiplicand

	^Zero new! !

!Zero methodsFor: 'arithmetic operations - private' stamp: 'Br 10/25/2021 06:45:05'!
beSubstractedFromAFraccion: aMinuend

	^aMinuend! !

!Zero methodsFor: 'arithmetic operations - private' stamp: 'Br 10/25/2021 06:49:36'!
beSubstractedFromAnEntero: aMinuend

	^aMinuend ! !


!Zero methodsFor: 'initialization' stamp: 'SDM 10/25/2021 12:24:12'!
initialize

	value := 0! !


!classDefinition: #Fraccion category: 'Numeros-Parte2-Ejercicio'!
Numero subclass: #Fraccion
	instanceVariableNames: 'numerator denominator'
	classVariableNames: ''
	poolDictionaries: ''
	category: 'Numeros-Parte2-Ejercicio'!

!Fraccion methodsFor: 'arithmetic operations' stamp: 'SDM 10/25/2021 12:24:27'!
* aMultiplier

	^aMultiplier beMultipliedByAFraccion: self
	! !

!Fraccion methodsFor: 'arithmetic operations' stamp: 'SDM 10/25/2021 12:24:30'!
+ anAdder 
	
	^anAdder beAddedToAFraccion: self! !

!Fraccion methodsFor: 'arithmetic operations' stamp: 'SDM 10/25/2021 12:24:34'!
- aSubtrahend 
		
	^aSubtrahend beSubstractedFromAFraccion: self
! !

!Fraccion methodsFor: 'arithmetic operations' stamp: 'SDM 10/25/2021 12:24:37'!
/ aDivisor

	^aDivisor divideAFraccion: self! !


!Fraccion methodsFor: 'comparing' stamp: 'HernanWilkinson 5/7/2016 20:42'!
= anObject

	^(anObject isKindOf: self class) and: [ (numerator * anObject denominator) = (denominator * anObject numerator) ]! !

!Fraccion methodsFor: 'comparing' stamp: 'HernanWilkinson 5/7/2016 20:50'!
hash

	^(numerator hash / denominator hash) hash! !


!Fraccion methodsFor: 'accessing' stamp: 'SDM 10/25/2021 12:24:52'!
denominator

	^denominator! !

!Fraccion methodsFor: 'accessing' stamp: 'SDM 10/25/2021 12:24:55'!
numerator

	^numerator! !


!Fraccion methodsFor: 'initialization' stamp: 'HernanWilkinson 5/7/2016 22:54'!
initializeWith: aNumerator over: aDenominator

	"Estas precondiciones estan por si se comenten errores en la implementacion - Hernan"
	aNumerator isZero ifTrue: [ self error: 'una fraccion no puede ser cero' ].
	aDenominator isOne ifTrue: [ self error: 'una fraccion no puede tener denominador 1 porque sino es un entero' ].
	
	numerator := aNumerator.
	denominator := aDenominator ! !


!Fraccion methodsFor: 'testing' stamp: 'NR 9/23/2018 23:41:38'!
isNegative
	
	^numerator < 0! !

!Fraccion methodsFor: 'testing' stamp: 'HernanWilkinson 5/7/2016 22:51'!
isOne
	
	^false! !

!Fraccion methodsFor: 'testing' stamp: 'HernanWilkinson 5/7/2016 22:51'!
isZero
	
	^false! !


!Fraccion methodsFor: 'printing' stamp: 'HAW 9/24/2018 08:54:46'!
printOn: aStream

	aStream 
		print: numerator;
		nextPut: $/;
		print: denominator ! !


!Fraccion methodsFor: 'arithmetic operations - private' stamp: 'SDM 10/25/2021 12:25:15'!
beAddedToAFraccion: anAugend

	| newNumerator newDenominator |
	
	newNumerator := (anAugend numerator * self denominator) + (anAugend denominator * self numerator).
	newDenominator := anAugend denominator * self denominator.
	
	^newNumerator / newDenominator! !

!Fraccion methodsFor: 'arithmetic operations - private' stamp: 'SDM 10/25/2021 12:25:18'!
beAddedToAnEntero: anAugend

	| newNumerator |
	
	newNumerator := (anAugend * self denominator) + self numerator.
	
	^Fraccion with: newNumerator over: self denominator! !

!Fraccion methodsFor: 'arithmetic operations - private' stamp: 'SDM 10/25/2021 12:25:21'!
beMultipliedByAFraccion: aMultiplicand

	^(aMultiplicand numerator * self numerator) / (aMultiplicand denominator * self denominator)! !

!Fraccion methodsFor: 'arithmetic operations - private' stamp: 'SDM 10/25/2021 12:25:24'!
beMultipliedByAnEntero: aMultiplicand
	
	| newNumerator |
	
	newNumerator := aMultiplicand value * self numerator.
	
	^newNumerator / self denominator! !

!Fraccion methodsFor: 'arithmetic operations - private' stamp: 'SDM 10/25/2021 18:22:07'!
beSubstractedFromAFraccion: aMinuend

	| newNumerator newDenominator |
	
	newNumerator := (self denominator * aMinuend numerator) - (self numerator * aMinuend denominator).
	newDenominator := self denominator * aMinuend denominator.
	
	^newNumerator / newDenominator! !

!Fraccion methodsFor: 'arithmetic operations - private' stamp: 'SDM 10/25/2021 12:25:31'!
beSubstractedFromAnEntero: aMinuend

	| newNumerator |
	
	newNumerator := (aMinuend value * self denominator) - self numerator.
	
	^newNumerator / self denominator! !

!Fraccion methodsFor: 'arithmetic operations - private' stamp: 'SDM 10/25/2021 12:25:34'!
divideAFraccion: aDividend

	^(aDividend numerator * self denominator) / (aDividend denominator * self numerator)! !

!Fraccion methodsFor: 'arithmetic operations - private' stamp: 'SDM 10/25/2021 12:25:38'!
divideAnEntero: aDividend
	
	| newNumerator |
	
	newNumerator := aDividend value * self denominator.
	
	^newNumerator / self numerator
	
	
	! !

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
