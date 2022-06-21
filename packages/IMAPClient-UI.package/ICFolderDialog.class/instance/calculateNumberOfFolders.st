toolbuilder
calculateNumberOfFolders

	^ (self emailAccounts collect: [:each | each rootFolder recursiveChildFolders]) flatten size + self emailAccounts size