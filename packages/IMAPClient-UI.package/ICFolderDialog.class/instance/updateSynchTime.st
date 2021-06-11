toolbuilder
updateSynchTime
	
	|date time|
	date := Date today asString.
	time := Time now print24.
	self dialogTitle: self title, '   |   ', 'Last successful synchronization on ', date, ' at ', time.
	
	 