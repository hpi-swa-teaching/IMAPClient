initialization
initialize 

	self
		parent: self;
		childFolders: OrderedCollection new;
		emails: SortedCollection new;
		name: self class defaultName.
	self emails sort: [:first :second | first uid >= second uid]