logout
testSelectInbox

	self endPoint connectionHandler stream server responses: self endPoint connectionHandler stream server authenticatedResponses.
	self endPoint select: 'inbox'.
	
	self 
		assert: self endPoint connectionHandler stream server responses 
		equals: self endPoint connectionHandler stream server selectedResponses