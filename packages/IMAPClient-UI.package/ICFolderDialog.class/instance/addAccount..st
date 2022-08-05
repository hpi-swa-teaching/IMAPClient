accountManagement
addAccount: anAccountInfo

	| endPoint |
	endPoint := ICEndPoint newWith: anAccountInfo.
	endPoint connectAndLogin ifTrue: [
		self emailAccounts add: endPoint.
		self folderWith: endPoint.
		endPoint preventTimeout.
		self changed: #emailAccounts.
		self addAccountInfoToEndPointConfigWithoutPassword: anAccountInfo]