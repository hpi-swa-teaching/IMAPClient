accessing
asDictionary
	
	"returns endpoint data as dictionary"
	
	| dataDictionary |
	
	dataDictionary := Dictionary new.
	
	dataDictionary at: 'ssl' put: (self ssl).
	dataDictionary at: 'name:' put: (self name).
	dataDictionary at: 'address' put: (self serverInfo host).
	dataDictionary at: 'port' put: (self serverInfo port).
	dataDictionary at: 'username' put: (self authenticationInfo username).
	dataDictionary at: 'password' put: (self authenticationInfo password).
	
	^ dataDictionary