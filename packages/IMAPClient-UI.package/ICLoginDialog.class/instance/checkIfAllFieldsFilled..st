helper
checkIfAllFieldsFilled: aDictionary
 
	| possiblyEmptyParameters |
 
	possiblyEmptyParameters := self emptyParametersIn: aDictionary. 
	self displayEmptyFieldNoteIfNecessary: possiblyEmptyParameters.
	
	^ possiblyEmptyParameters isEmpty