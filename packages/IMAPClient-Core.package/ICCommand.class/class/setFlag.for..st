commands
setFlag: aFlagString for: aMessageId

	^ self join: {'STORE' . aMessageId . '+FLAGS \', aFlagString withFirstCharacterUppercase}