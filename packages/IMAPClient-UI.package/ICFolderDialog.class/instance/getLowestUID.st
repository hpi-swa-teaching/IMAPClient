get emails
getLowestUID

	| lowestEmail |
	
	lowestEmail := self emailsOfSelectedFolder at: (self emailsOfSelectedFolder size - 1).
	lowestEmail isNil
		ifTrue: [^ nil]
		ifFalse: [^ lowestEmail uid]