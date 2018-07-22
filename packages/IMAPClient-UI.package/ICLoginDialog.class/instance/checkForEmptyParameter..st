as yet unclassified
checkForEmptyParameter: aCollection
	
	| possiblyEmptyParameters |
	
	possiblyEmptyParameters := self emptyParameterFrom: aCollection.	
	(possiblyEmptyParameters isEmpty) 
		ifFalse: [
			self displayEmptyFieldErrorMessage: possiblyEmptyParameters.			
			^ false].
	
	^ true