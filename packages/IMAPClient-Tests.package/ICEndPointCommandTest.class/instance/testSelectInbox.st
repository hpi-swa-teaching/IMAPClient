logout
testSelectInbox

	self endPoint stream server responses: self endPoint stream server authenticatedResponses.
	self endPoint select: 'inbox'.
	
	self assert: self endPoint stream server responses equals: self endPoint stream server selectedResponses