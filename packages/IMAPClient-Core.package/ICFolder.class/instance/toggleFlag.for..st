action - update emails
toggleFlag: aFlag for: anEmail

	self retrieveFlagsFor: anEmail.
	self switchFlag: aFlag for: anEmail to: (anEmail perform: aFlag) not