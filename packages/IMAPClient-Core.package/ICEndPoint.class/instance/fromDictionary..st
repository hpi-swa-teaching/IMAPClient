accessing
fromDictionary: configData
	
	[self
		ssl: (configData at: 'ssl');
		name: (configData at: 'name');
		connectTo: (configData at: 'address') on: ((configData at: 'port') asNumber);
		login: (configData at: 'username') using: (configData at: 'password')
	]
	on: Error
	do: [ :sig | self inform: sig asString]
	
     