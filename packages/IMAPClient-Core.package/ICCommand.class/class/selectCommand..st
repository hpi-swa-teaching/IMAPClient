commands
selectCommand: aFolder

	^ self join: {'SELECT' . self putInQuotes: aFolder}
	