action - update emails
retrieveBodyFor: anEmail

	^ 'Content-Type: ', anEmail contentType, Character cr, 'Content-Transfer-Encoding: ', anEmail contentTransferEncoding, Character cr, Character cr, (self endpoint retrieveBody: anEmail)