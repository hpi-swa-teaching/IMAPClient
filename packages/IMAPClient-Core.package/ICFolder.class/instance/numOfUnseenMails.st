email access
numOfUnseenMails

	| numOfUnseen |
	numOfUnseen := self childFolders detectSum: [:anICFolder | anICFolder numOfUnseenMails].
	self countOfUnseenMails: (numOfUnseen + (self emails count: [:anICEmail | anICEmail seen not])).
	^ self countOfUnseenMails