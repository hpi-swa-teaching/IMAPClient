accessing
asDictionary
	
	^ Dictionary new;
		at: 'ssl' put: self ssl;
		at: 'name:' put: self accountName;
		at: 'address' put: self host;
		at: 'port' put: self port;
		at: 'username' put: self username;
		at: 'password' put: self password.
	