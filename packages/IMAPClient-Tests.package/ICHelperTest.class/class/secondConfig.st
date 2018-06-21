as yet unclassified
secondConfig
	|config|
	
	config := Dictionary new.
	
	config at: 'ssl' put: true.
	config at: 'name' put: 'petersAccount'.
	config at: 'address' put: 'test.server.nl' .
	config at: 'port' put: '993'.
	config at: 'username' put: 'peterMustermann'.
	
	^config