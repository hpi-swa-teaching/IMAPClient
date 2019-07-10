login
insertDefaults

	((self serverPort isNil) or: (self serverPort asString isEmpty))
		ifTrue: [self serverPort: ICLoginDialog defaultPort asString asText].