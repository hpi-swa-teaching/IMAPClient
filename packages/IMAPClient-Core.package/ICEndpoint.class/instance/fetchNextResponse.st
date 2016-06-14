login
fetchNextResponse
	
	| multiLineResponse |
	multiLineResponse := OrderedCollection new.
	[ self stream lastResponse beginsWith: self class commandSucceeded ] whileFalse: [
		multiLineResponse add: self stream lastResponse.
		self stream nextResponse ].
	
	self lastResponse: multiLineResponse