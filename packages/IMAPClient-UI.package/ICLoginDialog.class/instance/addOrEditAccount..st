action - button
addOrEditAccount: anAccountInfo

	self updateMode
		ifFalse: [
			(self accountnameUnused: anAccountInfo) ifFalse: [^ self].
			self folderDialog addAccount: anAccountInfo]
		ifTrue: [self folderDialog editAccount: anAccountInfo with: self endpoint]