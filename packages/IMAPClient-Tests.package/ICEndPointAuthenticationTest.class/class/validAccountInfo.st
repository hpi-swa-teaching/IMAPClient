constants
validAccountInfo

	^ ICAccountInfo new
		accountName: self validAccountName;
		host: self validHost;
		port: self validPort;
		username: self validUsername;
		password: self validPassword;
		ssl: true