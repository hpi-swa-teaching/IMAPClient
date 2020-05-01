constants
invalidHostAccountInfo

^ ICAccountInfo new
	accountName: self validAccountName;
	host: self invalidHost;
	port: self validPort;
	username: self validUsername;
	password: self validPassword;
	ssl: true