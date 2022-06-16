accessing - folder
hasMatchInLabel: anICEmail with: aString

	^ (self labelForMail: anICEmail)
		includesSubstring: self filterString
		caseSensitive: false