initialization
initialize 

	self
		parent: self;
		childFolders: OrderedCollection new;
		emails: (SortedCollection sortBlock: [:first :second | (first uid) asNumber >= (second uid) asNumber]);
		name: self class defaultName