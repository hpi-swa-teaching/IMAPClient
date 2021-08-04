constants
invalidUsernameAccountInfo
	
	^ ICAccountInfo new
		accountName: self validAccountName;
		host: self validHost;
		port: self validPort;
		username: self invalidUsername;
		password: self validPassword;
		ssl: true