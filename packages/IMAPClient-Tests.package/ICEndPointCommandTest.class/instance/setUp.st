setup
setUp

	self endPoint: ICEndPoint new.
	self endPoint
		stream: ICMockSocketStream new;
		loggedIn: true.
	self endPoint stream connected: true.
	self endPoint stream server responses: self endPoint stream server selectedResponses.
	"Transcript show: (String cr, 'last response:', String cr, (self endPoint stream server selectedResponses at: '. FETCH 45 (body[HEADER.FIELDS (from to subject date)])') , String cr, String cr)."
	self endPoint lastResponse: (self endPoint stream server selectedResponses at: '. FETCH 45 (body[HEADER.FIELDS (from to subject date)])').