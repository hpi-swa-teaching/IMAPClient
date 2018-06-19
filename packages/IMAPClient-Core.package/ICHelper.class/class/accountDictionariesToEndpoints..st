as yet unclassified
accountDictionariesToEndpoints: aCollection
	
	"this method takes a collection of dictionaries, which contain login information, and responds with a collection of    
	 endpoints,	which are created from the dictionary data"
	
	|endpointCollection|
	
	endpointCollection := OrderedCollection new.
	aCollection do: [ :configData | endpointCollection add: (ICEndPoint new fromDictionary: configData)].
			
	^ endpointCollection			
				