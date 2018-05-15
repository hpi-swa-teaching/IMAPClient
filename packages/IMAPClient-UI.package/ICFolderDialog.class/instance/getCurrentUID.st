get emails
getCurrentUID

	| latestEmail |
	latestEmail := self emailsOfSelectedFolder detectMax: [:anICEmail | anICEmail uid].
	latestEmail isNil
		ifTrue: [^ nil]
		ifFalse: [^ latestEmail uid]