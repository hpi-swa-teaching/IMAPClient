as yet unclassified
accountDictionariesToEndpoints: aCollection
	
	"this method takes a collection of dictionaries, which contain login information, and responds with a collection of endpoints,
	which are created from the dictionary data"
	
	|endpoint endpointCollection|
	
	
	endpointCollection := OrderedCollection new.
	
	aCollection do: [ :configData | 
		endpoint := ICEndPoint new.
		
		[ endpoint 
		ssl: (configData at: 'ssl');
		name: (configData at: 'name');
		connectTo: (configData at: 'address') on: ((configData at: 'port') asNumber);
		login: (configData at: 'username') using: (configData at: 'password')
		]
		on: Error
		do: [ :sig | self inform: sig asString ].
		
		endpointCollection add: endpoint.
	].
			
	^ endpointCollection			
				