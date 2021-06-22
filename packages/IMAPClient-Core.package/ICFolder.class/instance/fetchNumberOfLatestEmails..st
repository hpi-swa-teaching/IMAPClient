action - update emails
fetchNumberOfLatestEmails: aNumber

	| startUID allUIDs |
	allUIDs := self endpoint currentUIDsFor: self.
	allUIDs ifEmpty: [^ OrderedCollection new].
	(allUIDs size - aNumber) strictlyPositive
		ifTrue: [startUID := allUIDs at: (allUIDs size - aNumber)]
		ifFalse: [startUID := (allUIDs first) - 1].
	self fetchEmailsFrom: startUID