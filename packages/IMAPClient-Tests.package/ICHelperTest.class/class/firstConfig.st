as yet unclassified
firstConfig
	|config|
	
	config := Dictionary new.
	
	config at: 'ssl' put: true.
	config at: 'name' put: 'maxsAccount'.
	config at: 'address' put: 'test.server.de' .
	config at: 'port' put: '993'.
	config at: 'username' put: 'maxMustermann'.
	
	^config