initialize-release
initialize
	|rootfolder|
	
	rootfolder:= ICFolder new.
	self endpoint: ICMockEndpoint new.
	self endpoint rootFolder: rootfolder.
	rootfolder endpoint: self endpoint;
		parent: rootfolder;
		folderName: 'rootFolder'.
	
	self deleteAccountFolder.
	