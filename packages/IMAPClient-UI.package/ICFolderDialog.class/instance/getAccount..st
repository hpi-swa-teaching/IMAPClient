accessing
getAccount: aString

	| index |
	index := self emailAccounts findFirst: [ :endpoint | endpoint name = aString].
	^ self emailAccounts at: index