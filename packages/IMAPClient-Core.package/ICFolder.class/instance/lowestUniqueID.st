updateEmails
lowestUniqueID
	
	(self emails) ifEmpty: [^ nil].
		
	^ (self emails detectMin: [:mail | mail uniqueID asNumber]) uniqueID