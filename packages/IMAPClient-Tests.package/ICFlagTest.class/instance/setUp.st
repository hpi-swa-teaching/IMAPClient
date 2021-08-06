running
setUp

	self 
		folder: (ICFolder new
				endpoint: ICMockEndpoint new);
		emails: OrderedCollection new.
	self emails 
		add: ICEmail new;
		add: ICEmail new