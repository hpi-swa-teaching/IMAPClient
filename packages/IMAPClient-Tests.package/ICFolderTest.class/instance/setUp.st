running
setUp 

	self root: ICFolder new.
	self endpoint: ICMockEndpoint new.
	self endpoint rootFolder: self root.
	self root endpoint: self endpoint.
	
	self root emails add: (ICEmail new 
		uniqueID: 0; 
		folder: self root).
	self root emails add: (ICEmail new 
		uniqueID: 1;
		folder: self root).
	self root emails add: (ICEmail new 
		uniqueID: 2;
		folder: self root)