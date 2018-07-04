updateEmails
getHighestUID
	
	(self emails) ifEmpty: [^ nil].
		
	^ (self emails at: 1) uid