as yet unclassified
displayEmptyFieldErrorMessage: aCollection

	| errorMessage |

	errorMessage := 'Please put in '.
 
	(ICHelper makeParameterCollection: aCollection) do: [:parameter |
		errorMessage := errorMessage, parameter asString.
		(parameter ~= (ICHelper makeParameterCollection: aCollection) last)
			ifTrue: [errorMessage := errorMessage, ', ']].
 
		errorMessage := errorMessage, ' data'.
		UserDialogBoxMorph inform: errorMessage title: ''