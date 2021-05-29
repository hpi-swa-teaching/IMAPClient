action - update emails
modifyFlag: aFlag for: anEmail

	self retrieveFlagsFor: anEmail.
	self endpoint modifyFlag: aFlag for: anEmail.
	anEmail header at: aFlag put: (anEmail perform: aFlag) not.
	self retrieveFlagsFor: anEmail.