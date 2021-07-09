accountManagement
passwordPromtCallback: anEndpoint
	
	anEndpoint connectAndLogin ifFalse: [^ false].
	
	self folderWith: anEndpoint.
	anEndpoint preventTimeout.
	
	^ true
