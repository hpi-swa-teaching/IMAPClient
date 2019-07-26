instance creation
newWithAccountName: aNameString 
	host: aHostString port: aPortNumber 
	username: aUsernameString password: aPasswordString 
	ssl: aSSLBool
	
	^ self new
			accountName: aNameString;
			host: aHostString;
			port: aPortNumber;
			username: aUsernameString;
			password: aPasswordString;
			ssl: aSSLBool