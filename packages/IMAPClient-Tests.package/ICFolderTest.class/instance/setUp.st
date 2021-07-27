running
setUp 
	
	self root: ICFolder new.
	self endpoint: ICMockEndpoint new.
	
	self endpoint rootFolder: self root.
	self root 
		endpoint: self endpoint;
		parent: self root;
		folderName: 'roo'.
	
	self uniqueIds do: [:aNumber |
		self root emails add: (ICEmail new 
			uniqueID: aNumber; 
			folder: self root;
			seen: false)]