as yet unclassified
testAccountWith: aCollection

	| testEndpoint |
	
	testEndpoint := ICEndPoint new fromDictionary: aCollection.
	
	^ ((testEndpoint fatalErrorOccured) not)
		