folder selection
shouldEmailBeVisible: anICEmail
	^ self filterString isEmpty or: [
			(self labelForMail: anICEmail) includesSubstring: self filterString caseSensitive: false]