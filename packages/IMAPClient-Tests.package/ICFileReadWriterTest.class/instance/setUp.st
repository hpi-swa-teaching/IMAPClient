setup
setUp

	self endpoint: (ICMockEndpoint new rootFolder: ICFolder new).
	self readWriter: (ICFileReadWriter newWith: self endpoint)