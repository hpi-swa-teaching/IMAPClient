get emails
getHighestUID

	| latestEmail |
	latestEmail := self emailsOfSelectedFolder detectMax: [:anICEmail | anICEmail uid].
	latestEmail isNil
		ifTrue: [^ nil]
		ifFalse: [^ latestEmail uid]