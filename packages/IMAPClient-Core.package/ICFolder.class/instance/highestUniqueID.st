accessing
highestUniqueID
	
	| movedEmailSet |
	(self emails) ifEmpty: [^ nil].
	movedEmailSet := ICMovedEmailStorage new movedMailsForAccount: self accountName andFolder: self.
	^ (self emails detectMax: [:mail | (movedEmailSet includes: mail) ifFalse: [mail uniqueID asNumber]ifTrue: [-1]]) uniqueID