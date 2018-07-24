updateEmails
getHighestUID
	
	(self emails) ifEmpty: [^ nil].
		
	^ (self emails detectMax: [:mail | mail uid asNumber]) uid.