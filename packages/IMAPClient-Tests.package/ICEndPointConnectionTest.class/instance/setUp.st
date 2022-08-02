running
setUp

	self endpoint: ICEndPoint new.
	self endpoint connectionHandler storedCommands: ICMockCommandStorage new.
	self endpoint connectionHandler stream stream: ICMockSocketStream new.
	self endpoint connectionHandler stream stream server: self class defaultMockServerConfig