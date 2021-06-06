running
setUp

	self endPoint: ICEndPoint new.
	self endPoint connectionHandler stream stream: ICMockSocketStream new.
	self endPoint connectionHandler stream stream server: self class defaultMockServerConfig