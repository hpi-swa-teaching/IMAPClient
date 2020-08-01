action - update emails
fetchLatestEmails: aCount

	| startUID allUIDs |
	
	self endpoint currentUIDsFor: self.
	allUIDs := self endpoint uids.
	allUIDs ifEmpty: [^ OrderedCollection new].
	(allUIDs size - aCount) strictlyPositive
		ifTrue: [startUID := allUIDs at: (allUIDs size - aCount)]
		ifFalse: [startUID := (allUIDs first) - 1].
	self fetchHeadersFrom: startUID