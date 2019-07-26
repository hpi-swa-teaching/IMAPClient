login
insertDefaults

	((self serverPort isNil) or: [(self serverPort asString isEmpty)])
		ifTrue: [self serverPort: self class defaultPort asString asText].