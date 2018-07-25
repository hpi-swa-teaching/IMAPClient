as yet unclassified
makeDataDictionary

	| dataDictionary |

	dataDictionary := Dictionary new.
 
	dataDictionary at: 'name' put: self accountName asString.
	dataDictionary at: 'address' put: self serverAddress asString.
	dataDictionary at: 'port' put: self serverPort asString.
	dataDictionary at: 'username' put: self username asString.
	dataDictionary at: 'password' put: self password asString.
	dataDictionary at: 'ssl' put: self ssl.
 
	^ dataDictionary