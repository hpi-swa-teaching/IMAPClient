initialization
initialize 

	self
		parent: self;
		childFolders: OrderedCollection new;
		eMails: OrderedCollection new;
		name: self class defaultName.