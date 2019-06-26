setup
setUp

	self endPoint: ICConnectionHandler new.
	self endPoint stream stream: ICMockSocketStream new.
	self endPoint stream stream server: self class defaultMockServerConfig