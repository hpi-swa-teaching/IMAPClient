constants
invalidPortAccountInfo

	^ ICAccountInfo new
		accountName: self validAccountName;
		host: self validHost;
		port: self invalidPort;
		username: self validUsername;
		password: self validPassword;
		ssl: true