running
setUpFolder

	self trashFolder: (self helper createAFolder: self trashFolderName).
	self trashFolder folderType: #Trash.
	self helper writeFolderOnDisk: self trashFolder.
	self folder: (self helper createAFolder: 'test').
	self email: (self helper createAnEmail: self folder).
	self email
		uniqueID: self class uniqueIDForValidMockServerResponse;
		messageID: self class messageIDForValidMockServerResponse;
		body: self class bodyForValidMockServerResponse