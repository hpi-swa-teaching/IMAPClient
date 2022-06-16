accessing
numberOfUnseenMails

	| numberOfUnseen |
	numberOfUnseen := self childFolders detectSum: [:anICFolder | anICFolder numberOfUnseenMails].
	^ numberOfUnseen + (self emails count: [:anICEmail | anICEmail seen not])