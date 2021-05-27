action - update emails
modifyFlag: aFlag for: anEmail

	self retrieveFlagsFor: anEmail.
	self endpoint modifyFlag: aFlag for: anEmail.
	self retrieveFlagsFor: anEmail.