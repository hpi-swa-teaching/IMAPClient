delete file
delete: anICEmail

	self assert: [anICEmail folder notNil].
	self delete: anICEmail in: anICEmail folder