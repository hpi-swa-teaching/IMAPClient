accessing
getEmailFromContactString: aString

	^(aString splitBy: Character tab asString) second