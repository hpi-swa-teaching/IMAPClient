logout
testLogout_NoConnection

	[self assert: (self endPoint logout)]
		on: Exception 
		do: [ ^ self ].
	self fail
		