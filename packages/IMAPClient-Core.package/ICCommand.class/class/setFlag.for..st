commands
setFlag: aFlagString for: aMessageId

	(self isValidFlag: aFlagString) ifFalse: [self error: 'Trying to send invalid Flag'].
	^ self join: {'STORE' . aMessageId . '+FLAGS \', aFlagString withFirstCharacterUppercase}