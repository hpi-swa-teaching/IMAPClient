as yet unclassified
askForPasswordsWith: aCollection

	aCollection do: [:account | 
		| loginInstance |
		
		loginInstance := ICAccountLogin new.
		loginInstance 
			ssl: (account at: 'ssl');
			accountName: (account at: 'name');
			serverAddress: (account at: 'address');
			serverPort: (account at: 'port');
			username: (account at: 'username').
		
		ToolBuilder default open: loginInstance]