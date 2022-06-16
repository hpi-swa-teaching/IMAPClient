validation
isValidFlag: aFlagString

	^ {'Seen'. 'Flagged'. 'Deleted'} includes: aFlagString withFirstCharacterUppercase