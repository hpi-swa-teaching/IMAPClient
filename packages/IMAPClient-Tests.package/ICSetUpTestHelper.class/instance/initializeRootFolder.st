initialize-release
initializeRootFolder

	| rootfolder |
	rootfolder := ICFolder new.
	self endPoint rootFolder: rootfolder.
	rootfolder
		endPoint: self endPoint;
		parent: rootfolder;
		folderName: 'rootFolder'