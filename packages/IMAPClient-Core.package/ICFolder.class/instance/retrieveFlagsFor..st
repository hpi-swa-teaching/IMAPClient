action - update emails
retrieveFlagsFor: anEmail
	
	self retrieveFlagsFrom: anEmail uniqueID to: anEmail uniqueID.
	self endpoint readWriter write: anEmail.
