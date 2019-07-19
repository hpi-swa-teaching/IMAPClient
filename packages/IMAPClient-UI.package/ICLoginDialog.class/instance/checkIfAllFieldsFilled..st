helper
checkIfAllFieldsFilled: anAccountInfo
 
	| possiblyEmptyParameters |
 
	possiblyEmptyParameters := self emptyParametersIn: anAccountInfo asDictionary. 
	self displayEmptyFieldErrorMessageIfNecessary: possiblyEmptyParameters.
	
	^ possiblyEmptyParameters isEmpty