running
setUp 
	
	self root: ICFolder new.
	self endpoint: ICMockEndpoint new.
	
	self endpoint rootFolder: self root.
	self root 
		endpoint: self endpoint;
		parent: self root;
		folderName: 'rootFolder'.
	
	self uniqueIds do: [:aNumber |
		self root addMails: 
			{ICEmail new 
				uniqueID: aNumber; 
				folder: self root;
				date: self class date;
				seen: false}]