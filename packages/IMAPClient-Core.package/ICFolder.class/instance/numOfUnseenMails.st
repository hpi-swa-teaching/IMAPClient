email access
numOfUnseenMails

	| numOfUnseen |
	numOfUnseen := self childFolders detectSum: [:anICFolder | anICFolder numOfUnseenMails].
	^ numOfUnseen + self emails count: [:anICEmail | anICEmail seen not]