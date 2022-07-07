setup
setUp

	| root |
	root:= ICFolder new.
	self endpoint: ICMockEndpoint new.
	self endpoint rootFolder: root.
	root endpoint: self endpoint;
		parent: root;
		folderName: 'rootFolder'.
	self readWriter: (ICFileReadWriter newWith: self endpoint)