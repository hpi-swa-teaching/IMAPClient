helper
createAccountInfo

	^ ICAccountInfo 
		newWithAccountName: self accountName asString
		host: self serverAddress asString
		port: self serverPort asNumber
		username: self username asString
		password: self password asString
		ssl: self ssl
	