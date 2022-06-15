running
setUp
	
	self folderDialog: ICMockFolderDialog new.
	self root: ICFolder new.
	self endpoint: ICMockEndpoint new.
	
	self endpoint rootFolder: self root.
	self root 
		endpoint: self endpoint;
		parent: self root;
		folderName: 'rootFolder'.
	self folderDialog rootFolder: self root.
	
	self wantsToTest: self folderDialog folderDialogMorph.
	
	