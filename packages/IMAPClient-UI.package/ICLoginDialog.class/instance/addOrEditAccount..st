action - button
addOrEditAccount: anAccountInfo

	self updateMode
		ifFalse: [
			(self accountnameUnused: anAccountInfo) ifFalse: [^ self].
			self folderDialogInstance addAccount: anAccountInfo]
		ifTrue: [self folderDialogInstance editAccount: anAccountInfo with: self endpoint]