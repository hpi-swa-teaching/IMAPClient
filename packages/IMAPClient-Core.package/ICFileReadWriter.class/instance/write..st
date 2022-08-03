write file
write: anICEmail

	self assert: [anICEmail folder notNil].
	self write: anICEmail in: anICEmail folder