constants
accountInfoForErasing

	^  (ICAccountInfo new)
		accountName:  'testAccountName';
		host: 'test.host';
		port: 993;
		username: 'testUser';
		password: 'superSecure';
		ssl: true