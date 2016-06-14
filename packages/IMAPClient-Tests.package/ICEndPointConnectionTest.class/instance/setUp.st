setup
setUp

	self endPoint: ICEndpoint new.
	self endPoint stream: ICMockSocketStream new.
	self endPoint stream server
		validHost: self class validHost;
		validPort: self class validPort