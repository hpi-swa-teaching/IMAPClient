updateEmails
retrieveFlagsFrom: anUID to: anotherUID
	self endpoint 
		select: self path;
		retrieveFlagsFrom: anUID to: anotherUID in: self