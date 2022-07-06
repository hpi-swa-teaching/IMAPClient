read file
readAccountSettings

	^ (Json readFrom: (self rootDirectory
		assureExistence;
		fileNamed: 'settings'))