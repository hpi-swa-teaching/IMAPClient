helper
changeInputField: currentIndex

	| correctSubmorph|

	"find field i need to go to"
	(self inputCollection size > (currentIndex))
	ifTrue: [
		
		correctSubmorph := self inputCollection detect: [:each | 
				(each getTextSelector = (self symbolArray at: (currentIndex + 1)))
			]. 	
		correctSubmorph grabKeyboard.
		
	]