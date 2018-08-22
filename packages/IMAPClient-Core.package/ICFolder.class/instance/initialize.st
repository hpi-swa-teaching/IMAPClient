initialization
initialize 

	self
		parent: self;
		childFolders: OrderedCollection new;
		emails: (SortedCollection sortBlock: [:first :second | first getDateInSeconds >= second getDateInSeconds]);
		name: self class defaultName