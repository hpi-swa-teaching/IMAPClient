accessing-header
senderAddressFromHeader

	| emailAddress |
	emailAddress := (MailAddressParser addressesIn: self from) at: 1.
	
	^ emailAddress