error handling
displayEmptyFieldErrorMessageIfNecessary: aCollection

	(aCollection isEmpty)
		ifFalse: [
				UserDialogBoxMorph inform: (self constructEmptyFieldsErrorMessage: aCollection) title: 'Note']