helper
changeInputField: currentInput

	self halt.
		
	(self inputCollection size > (currentInput +1))
	ifTrue: [
		(self inputCollection at: (currentInput)) hasFocus: false. 	
		(self inputCollection at: (currentInput +1)) 	hasFocus: false.
	]