initialize-release
initialize

	| rootfolder |
	rootfolder := ICFolder new.
	self endpoint: ICMockEndPoint new.
	self endpoint connectionHandler storedCommands: ICMockCommandStorage new.
	self endpoint rootFolder: rootfolder.
	rootfolder
		endpoint: self endpoint;
		parent: rootfolder;
		folderName: 'rootFolder'.
	
	self reset