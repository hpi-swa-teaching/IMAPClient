initialization
initialize 

	self
		parent: self;
		childFolders: OrderedCollection new;
		emails: (SortedCollection sortBlock: [:first :second | first dateInSeconds >= second dateInSeconds]);
		name: self class defaultName