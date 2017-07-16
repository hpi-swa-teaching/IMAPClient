setup
setUp

	self endPoint: ICEndPoint new.
	self endPoint stream stream: ICMockSocketStream new.
	self endPoint stream stream server: self class defaultMockServerConfig