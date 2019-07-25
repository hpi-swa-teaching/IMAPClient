accountManagment
addAccount: anAccountInfo

	| data |
	
	data := OrderedCollection new.
	data add: anAccountInfo asDictionary.
	
	ICEndPoint addConfiguration: anAccountInfo asDictionary.
	self emailAccounts add: ((ICHelper accountDictionariesToEndpoints: data) at: 1).
	self changed: #emailAccounts