logout
testSelectInbox

	self endpoint connectionHandler stream server responses: self endpoint connectionHandler stream server authenticatedResponses.
	self endpoint select: 'inbox'.
	
	self
		assert: self endpoint connectionHandler stream server responses
		equals: self endpoint connectionHandler stream server selectedResponses