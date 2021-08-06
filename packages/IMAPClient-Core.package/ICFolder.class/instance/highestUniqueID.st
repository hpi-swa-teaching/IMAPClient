accessing
highestUniqueID
	
	| movedEmailSet |
	(self emails) ifEmpty: [^ self class missingUID].
	movedEmailSet := ICMovedEmailStorage new movedMailsForAccount: self accountName andFolder: self.
	^ (self emails detectMax: [:mail | (movedEmailSet includes: mail) 
										ifFalse: [mail uniqueID asNumber]
										ifTrue: [self class missingUID]]) uniqueID