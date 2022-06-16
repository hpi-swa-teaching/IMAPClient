running
tearDown 
	
	self openedWindows do: 
		[:window | window abandon]