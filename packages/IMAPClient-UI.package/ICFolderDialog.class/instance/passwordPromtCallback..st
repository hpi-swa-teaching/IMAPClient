accountManagement
passwordPromtCallback: anICEndpoint
	
	anICEndpoint connectAndLogin ifFalse: [^ false].
	
	self folderWith: anICEndpoint.
	anICEndpoint preventTimeout.
	
	^ true