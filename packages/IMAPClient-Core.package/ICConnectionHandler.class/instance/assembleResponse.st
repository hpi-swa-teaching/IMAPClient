connection
assembleResponse
	
	| multiLineResponse |
	multiLineResponse := OrderedCollection new.
	[ICParser commandSucceeded: self stream lastResponse] whileFalse: [ 
		multiLineResponse add: self stream lastResponse.
		self stream nextResponse].
	
	^ multiLineResponse