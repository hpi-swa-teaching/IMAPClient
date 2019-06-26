email access
latestEmails: count

	| startUID allUIDs |
	
	self endpoint fetchUIDsFor: self.
	allUIDs := self endpoint uids.
	allUIDs ifEmpty: [^ OrderedCollection new].
	(allUIDs size - count) <= 0
		ifTrue: [startUID := (allUIDs at: 1) - 1]
		ifFalse: [startUID := allUIDs at: (allUIDs size - count)].
	self fetchHeadersFrom: startUID