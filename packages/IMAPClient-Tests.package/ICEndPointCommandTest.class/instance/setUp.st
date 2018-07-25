setup
setUp

	| subfolder |
	
	self endPoint: ICEndPoint new.
	self rootFolder: ICFolder new.
	self rootFolder endpoint: self endPoint.
	
	subfolder := ICFolder named: 'inbox' in: self rootFolder.
	subfolder endpoint: self endPoint.
	
	self 
		endPoint
		stream: ICMockSocketStream new;
		loggedIn: true;
		rootFolder: self rootFolder;
		currentFolderName: 'inbox';
		hierarchyDelimiter: '\'.
		
	self endPoint stream connected: true.
	"self endPoint stream server responses: self endPoint stream server selectedResponses."
	"Transcript show: (String cr, 'last response:', String cr, (self endPoint stream server selectedResponses at: 
	'. FETCH 45 (body[HEADER.FIELDS (from to subject date)])') , String cr, String cr)."
	
	self endPoint lastResponse: (self endPoint stream server selectedResponses at: '. FETCH 45 (body[HEADER.FIELDS (from to subject date)])')