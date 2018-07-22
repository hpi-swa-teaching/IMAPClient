error handling
checkData: aCollection

	| possiblyEmptyParameters errorMessage |
	
	possiblyEmptyParameters := self checkForEmptyParameter: aCollection.
	errorMessage := 'Please put in '.
	
	(possiblyEmptyParameters isEmpty) 
		ifFalse: [
			(ICHelper makeParameterCollection: possiblyEmptyParameters) do: [:parameter |
				errorMessage := errorMessage, parameter asString.
				(parameter ~= (ICHelper makeParameterCollection: possiblyEmptyParameters) last)
					ifTrue: [errorMessage := errorMessage, ', ']].
		errorMessage := errorMessage, ' data'.
		UserDialogBoxMorph inform: errorMessage title: ''.
		self fatalErrorOccured: true.
		^ false].
	
	^ true
	
	