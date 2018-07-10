accessing
fromDictionary: configData
	
	"initializes endpoint with a dictionary"
	
	[self
		ssl: (configData at: 'ssl');
		name: (configData at: 'name');
		connectTo: (configData at: 'address') on: ((configData at: 'port') asNumber);
		login: (configData at: 'username') using: (configData at: 'password')]
	on: Error
	do: [
		self fatalErrorOccured: true.
		UserDialogBoxMorph inform: 'Connection could not be established' title: '']