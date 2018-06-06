dateAndTime
getMailTimeInSeconds: aString

	^ DateAndTime fromSeconds: (
			(MailMessage new timeFrom: aString) + (DateAndTime localOffset asSeconds) + ((Date newDay: 1 year: 1980) asSeconds) 
	    )