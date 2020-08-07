updateEmails
highestUniqueID
	
	(self emails) ifEmpty: [^ nil].
		
	^ (self emails detectMax: [:mail | mail uniqueID asNumber]) uniqueID