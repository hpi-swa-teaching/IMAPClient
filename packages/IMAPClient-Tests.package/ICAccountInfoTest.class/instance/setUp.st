running
setUp

	self accountInfo: ((ICAccountInfo new)
		accountName:  self class validAccountName;
		host: self class validHost;
		port: self class validPort;
		username: self class validUsername;
		password: self class validPassword;
		ssl: true)
	