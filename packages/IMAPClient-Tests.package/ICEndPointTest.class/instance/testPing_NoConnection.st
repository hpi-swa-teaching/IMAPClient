ping
testPing_NoConnection

	self should: [ self endPoint ping ] raise: Exception 
		
	