accessing
selectedEndpoint: anICEndpoint

	anICEndpoint = self selectedEndpoint ifFalse: [
		selectedEndpoint := anICEndpoint.
		self switchToNewEndpoint].
	
	self changed: #selectedEndpoint