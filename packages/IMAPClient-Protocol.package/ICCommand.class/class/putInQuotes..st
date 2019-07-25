command building
putInQuotes: aString

	^ ICCommand protocolQuote, aString, ICCommand protocolQuote