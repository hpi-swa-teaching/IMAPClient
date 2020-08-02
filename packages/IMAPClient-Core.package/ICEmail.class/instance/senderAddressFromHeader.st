accessing-header
senderAddressFromHeader

	^ (MailAddressParser addressesIn: self from) first