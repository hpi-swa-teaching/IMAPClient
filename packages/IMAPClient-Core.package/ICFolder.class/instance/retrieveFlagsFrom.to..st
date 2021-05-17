action - update emails
retrieveFlagsFrom: anUID to: anotherUID
	
	self endpoint isConnected ifTrue:[
		self endpoint 
			select: self path;
			retrieveFlagsFrom: anUID to: anotherUID in: self]