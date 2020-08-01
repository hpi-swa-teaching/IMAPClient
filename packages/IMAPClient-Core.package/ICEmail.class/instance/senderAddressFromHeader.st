accessing-header
senderAddressFromHeader

	| emailAddress |
	emailAddress := (MailAddressParser addressesIn: self from) first.
	
	^ emailAddress