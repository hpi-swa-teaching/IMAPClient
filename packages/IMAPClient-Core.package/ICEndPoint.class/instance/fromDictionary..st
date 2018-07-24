accessing
fromDictionary: configData
	
	[self
		ssl: (configData at: 'ssl');
		name: (configData at: 'name');
		connectTo: (configData at: 'address') on: ((configData at: 'port') asNumber);
		login: (configData at: 'username') using: (configData at: 'password')]
	valueWithin: 2 seconds 
	onTimeout: [
		(self fatalErrorOccured)
			ifFalse: [
				UIManager default inform: 'Connection could not be established'.
				self fatalErrorOccured: true]]
			