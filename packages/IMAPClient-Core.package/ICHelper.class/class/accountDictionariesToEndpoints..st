helper methods
accountDictionariesToEndpoints: aCollection
	
	
	^ aCollection collect: [:configData | ICEndPoint new connectAndLoginWith: (ICAccountInfo newWith: configData)]