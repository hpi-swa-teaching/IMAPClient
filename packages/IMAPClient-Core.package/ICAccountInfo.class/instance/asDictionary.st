accessing
asDictionary
	
	| dict |
	dict := Dictionary new.
	dict at: 'ssl' put: self ssl;
		at: 'accountName' put: self accountName;
		at: 'address' put: self host;
		at: 'port' put: self port;
		at: 'username' put: self username;
		at: 'password' put: self password.
	
	^ dict
	