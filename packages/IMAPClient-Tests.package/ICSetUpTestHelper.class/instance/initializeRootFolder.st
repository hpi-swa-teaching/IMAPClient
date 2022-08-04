initialize-release
initializeRootFolder

	| rootfolder |
	rootfolder := ICFolder new.
	self endpoint rootFolder: rootfolder.
	rootfolder
		endpoint: self endpoint;
		parent: rootfolder;
		folderName: 'rootFolder'