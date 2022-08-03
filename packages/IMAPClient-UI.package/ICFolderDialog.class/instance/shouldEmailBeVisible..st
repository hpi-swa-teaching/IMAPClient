accessing - folder
shouldEmailBeVisible: anICEmail

	(self showUnread and: [anICEmail seen]) ifTrue: [^false].
	
	^ (self filterString isEmpty or:  [self hasMatchIn: anICEmail]) 
