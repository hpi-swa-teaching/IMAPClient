email access
getLatestEmails: count

	| startUID allUIDs |
	self endpoint getCurrentUIDsFor: self.
	allUIDs := self endpoint uids.
	allUIDs ifEmpty: [^ OrderedCollection new].
	(allUIDs size - count) <= 0
		ifTrue: [startUID := allUIDs at: 1]
		ifFalse: [startUID := allUIDs at: (allUIDs size - count)].
	self endpoint maildirDiffFetchHeadersFrom: startUID