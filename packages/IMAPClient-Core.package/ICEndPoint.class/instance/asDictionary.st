accessing
asDictionary
	
	"returns endpoint data as dictionary"
	
	| dataDictionary |
	
	dataDictionary := Dictionary new.
	
	dataDictionary at: 'ssl' put: (self accountInfo ssl).
	dataDictionary at: 'name:' put: (self accountInfo name).
	dataDictionary at: 'address' put: (self accountInfo host).
	dataDictionary at: 'port' put: (self accountInfo port).
	dataDictionary at: 'username' put: (self accountInfo username).
	dataDictionary at: 'password' put: (self accountInfo password).
	
	^ dataDictionary