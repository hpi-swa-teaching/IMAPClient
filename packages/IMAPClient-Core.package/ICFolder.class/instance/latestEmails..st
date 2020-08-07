email access
latestEmails: count

	| startUID allUIDs |
	
	self endpoint currentUIDsFor: self.
	allUIDs := self endpoint uids.
	allUIDs ifEmpty: [^ OrderedCollection new].
	(allUIDs size - count) strictlyPositive
		ifTrue: [startUID := allUIDs at: (allUIDs size - count)]
		ifFalse: [startUID := (allUIDs first) - 1].
	self fetchHeadersFrom: startUID