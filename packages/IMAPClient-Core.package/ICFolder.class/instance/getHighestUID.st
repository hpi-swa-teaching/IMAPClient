updateEmails
getHighestUID

	| latestEmail |
	latestEmail := self emails detectMax: [:anICEmail | anICEmail uid].
	latestEmail isNil
		ifTrue: [^ nil]
		ifFalse: [^ latestEmail uid]