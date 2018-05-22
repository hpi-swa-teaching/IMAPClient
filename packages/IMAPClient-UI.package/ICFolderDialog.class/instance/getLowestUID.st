get emails
getLowestUID

	| lowestEmail |
	lowestEmail := self emailsOfSelectedFolder detectMin: [:anICEmail | anICEmail uid].
	lowestEmail isNil
		ifTrue: [^ nil]
		ifFalse: [^ lowestEmail uid]