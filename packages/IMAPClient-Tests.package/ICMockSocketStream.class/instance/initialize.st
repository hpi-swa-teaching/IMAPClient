initialization
initialize

	self
		responseQueue: OrderedCollection new;
		server: ICMockServer new;
		connected: false