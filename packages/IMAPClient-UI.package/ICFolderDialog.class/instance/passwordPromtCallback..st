accountManagement
passwordPromtCallback: anICEndPoint

	anICEndPoint connectAndLogin ifFalse: [^ false].
	
	self folderWith: anICEndPoint.
	anICEndPoint preventTimeout.
	
	^ true