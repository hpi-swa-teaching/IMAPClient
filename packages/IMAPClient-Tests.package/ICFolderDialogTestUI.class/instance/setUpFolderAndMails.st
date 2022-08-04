testing
setUpFolderAndMails

	self folder: ICFolder new.
	self folderDialog rootFolder addFolder: self folder.
	self folder addMails: {
		self getMailIn: self folder from: self emailAddresses first.
		self getMailIn: self folder from: self emailAddresses second}.
	self folderDialog triggerEmailChanges