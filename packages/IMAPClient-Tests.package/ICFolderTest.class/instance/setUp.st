setup
setUp 

	self root: ICFolder new.
	self endpoint: ICMockEndpoint new.
	self endpoint rootFolder: self root