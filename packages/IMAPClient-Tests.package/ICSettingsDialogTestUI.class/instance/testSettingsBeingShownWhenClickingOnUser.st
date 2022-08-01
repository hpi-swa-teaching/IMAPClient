testing
testSettingsBeingShownWhenClickingOnUser
	"
	we wanted to actually click on the list items and not just select them but the framework doesn't seem to offer a solution for that. So here we are, left with this not working code. If you find a way, feel free to reactivte it. Writing our own 'click' didn't seem like a good idea to us.

	| accountListItem clickableItem |
	
	accountListItem := self findBySubstringInContents: self accountName in: self subject.
	clickableItem := accountListItem morphs asOrderedCollection first owner owner.
	clickableItem click: (MouseButtonEvent new position: (clickableItem bounds origin + (1 @ 1))).
	self assert: (self existsMorphWithContentWith: (ICAccountSettings displayNames at: (ICAccountSettings notSyncedFoldersID)) in: self subject)"
	
	self settingsDialog model selectedEndpoint: (self emailAccounts first).
	self assert: (self existsMorphWithContentWith: (ICAccountSettings displayNames at: (ICAccountSettings notSyncedFoldersID)) in: self subject)
	
	
	
	