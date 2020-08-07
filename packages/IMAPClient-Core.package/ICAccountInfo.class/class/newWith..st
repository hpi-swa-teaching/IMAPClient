instance creation
newWith: aDataDictionary
	
	^ self new
		accountName: (aDataDictionary at: 'accountName' ifAbsent: [nil]);
		host: (aDataDictionary at: 'address' ifAbsent: [self invalidHost]);
		port: ((aDataDictionary at: 'port' ifAbsent: [self invalidPort]) asNumber);
		username: (aDataDictionary at: 'username' ifAbsent: [self invalidUsername]);
		password: (aDataDictionary at: 'password' ifAbsent: [self invalidPassword]);
		ssl: (aDataDictionary at: 'ssl' ifAbsent: [self initialSsl])