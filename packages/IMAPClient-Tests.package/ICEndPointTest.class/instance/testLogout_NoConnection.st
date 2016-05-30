logout
testLogout_NoConnection

	self should: [self endPoint logout] raise: Exception 
		