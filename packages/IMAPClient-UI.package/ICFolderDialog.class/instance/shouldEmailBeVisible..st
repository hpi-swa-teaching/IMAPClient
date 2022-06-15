accessing - folder
shouldEmailBeVisible: anICEmail
	^ (self filterString isEmpty or: [
		(self hasMatchInLabel: anICEmail with: self filterString)
		or:
		[self hasMatchInAddressbook: anICEmail sender with: self filterString]])
		and: [(self showUnread) ifTrue:
			[anICEmail seen not]
			ifFalse: [true].]