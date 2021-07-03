accessing
lowestUniqueID
	
	| movedEmailSet |
	(self emails) ifEmpty: [^ nil].
	movedEmailSet := ICMovedEmailStorage new movedMailsForAccount: self accountName andFolder: self.
	^ (self emails detectMin: [:mail | (movedEmailSet includes: mail) ifFalse: [mail uniqueID asNumber] ifTrue: [9999999]] ) uniqueID