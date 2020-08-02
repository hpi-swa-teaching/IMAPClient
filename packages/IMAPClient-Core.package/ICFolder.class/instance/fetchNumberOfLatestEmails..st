action - update emails
fetchNumberOfLatestEmails: aNumber

	| startUID allUIDs |
	
	self endpoint currentUIDsFor: self.
	allUIDs := self endpoint uids.
	allUIDs ifEmpty: [^ OrderedCollection new].
	(allUIDs size - aNumber) strictlyPositive
		ifTrue: [startUID := allUIDs at: (allUIDs size - aNumber)]
		ifFalse: [startUID := (allUIDs first) - 1].
	self fetchHeadersFrom: startUID