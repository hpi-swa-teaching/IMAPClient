setup
setUp

	self endPoint: ICEndpoint new.
	self endPoint stream: ICMockSocketStream new.
	self endPoint stream
		validHost: self class validHost;
		validPort: self class validPort.