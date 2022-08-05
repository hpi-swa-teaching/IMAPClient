accessing
selectedEndPoint: anICEndPoint

	anICEndPoint = self selectedEndPoint ifFalse: [
		selectedEndPoint := anICEndPoint.
		self switchToNewEndPoint].
	
	self changed: #selectedEndPoint