constants
firstExampleResponse

	^ '* ', self firstMessageID, ' FETCH (BODY[HEADER.FIELDS (from to subject date)] {103}', Character cr, 'Date: Tue, 1 Aug 2017 14:08:29 +0200', Character cr, 'From: test@example.de', Character cr, 'To: student@hpi.de', Character cr, 'Subject: test mail', Character cr, '', Character cr, ' UID ', self firstUID, ')'