constants
invalidPasswordAccountInfo
	
	^ ICAccountInfo new
		accountName: self validAccountName;
		host: self validHost;
		port: self validPort;
		username: self validUsername;
		password: self invalidPassword;
		ssl: true