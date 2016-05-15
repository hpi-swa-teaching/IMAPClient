ping
testPing_NoConnection

	[self assert: (self endPoint ping)]
		on: Exception 
		do: [ ^ self ].
	self fail
		
	