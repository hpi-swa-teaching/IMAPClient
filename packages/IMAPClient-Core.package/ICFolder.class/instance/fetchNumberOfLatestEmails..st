action - update emails
fetchNumberOfLatestEmails: aNumber

	"determines the start UID to fetch for a given number of emails"
	| startUID allUIDs |
	allUIDs := self endpoint currentUIDsFor: self.
	allUIDs ifEmpty: [^ OrderedCollection new].
	(allUIDs size - aNumber) strictlyPositive
		ifTrue: [startUID := allUIDs at: (allUIDs size - aNumber)]
		ifFalse: [startUID := (allUIDs first) - 1].
	self fetchEmailsFrom: startUID