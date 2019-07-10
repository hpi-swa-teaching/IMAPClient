instance creation
newWithAccountName: name host: host port: port username: username password: password ssl: ssl

	^ self new
			accountName: name;
			host: host;
			port: port;
			username: username;
			password: password;
			ssl: ssl