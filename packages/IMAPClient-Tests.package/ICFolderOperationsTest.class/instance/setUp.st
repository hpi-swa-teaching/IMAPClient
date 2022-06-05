running
setUp

	self endpoint: ICEndPoint new.
	
	self root: ICFolder new.
	self root 
		endpoint: self endpoint;
		parent: self root;
		folderName: 'rootFolder'.
	
	self endpoint rootFolder: self root.