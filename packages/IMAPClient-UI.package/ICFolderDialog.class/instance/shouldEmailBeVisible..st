accessing - folder
shouldEmailBeVisible: anICEmail
	^ (self filterString isEmpty or: [
			(self labelForMail: anICEmail) includesSubstring: self filterString caseSensitive: false])
		and: [(self showUnread) ifTrue:
			[anICEmail seen not]
			ifFalse: [true].]