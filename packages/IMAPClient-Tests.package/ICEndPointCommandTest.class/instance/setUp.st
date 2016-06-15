setup
setUp

	self endPoint: ICEndPoint new.
	self endPoint
		stream: ICMockSocketStream new;
		loggedIn: true.
	self endPoint stream connected: true.
	self endPoint stream server responses: self endPoint stream server selectedResponses
		