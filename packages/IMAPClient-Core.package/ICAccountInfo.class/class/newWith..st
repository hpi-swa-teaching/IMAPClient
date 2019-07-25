instance creation
newWith: aDataDictionary
	
	^ self newWithAccountName: (aDataDictionary at: 'accountName') 
		host: (aDataDictionary at: 'address')
		port: ((aDataDictionary at: 'port') asNumber)
		username: (aDataDictionary at: 'username')
		password: (aDataDictionary at: 'password')
		ssl: (aDataDictionary at: 'ssl')