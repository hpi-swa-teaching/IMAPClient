updateEmails
getLowestUID
	
	(self emails) ifEmpty: [^ nil].
		
	^ (self emails detectMin: [:mail | mail uid asNumber]) uid