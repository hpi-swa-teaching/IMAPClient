initialization
initialize 

	self
		parent: self;
		childFolders: OrderedCollection new;
		emails: OrderedCollection new;
		name: self class defaultName.