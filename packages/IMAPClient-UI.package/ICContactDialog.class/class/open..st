instance creation
open: anAdressBookDialog

	| instance |
	instance := self new.
	instance addressBookDialog: anAdressBookDialog.
	^ ToolBuilder default open: instance