helper
checkIfAllFieldsFilled: aDictionary
 
	| possiblyEmptyParameters |
 
	possiblyEmptyParameters := self emptyParametersIn: aDictionary. 
	self displayEmptyFieldErrorMessageIfNecessary: possiblyEmptyParameters.
	
	^ possiblyEmptyParameters isEmpty