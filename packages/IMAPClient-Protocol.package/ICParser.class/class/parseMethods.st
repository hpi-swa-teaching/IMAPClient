constants
parseMethods

	^ Dictionary newFrom: {
		'To' -> [:headerChunk :email | self parseFetchHeaderReceiver: headerChunk for: email].
		'From' -> [:headerChunk :email | self parseFetchHeaderSender: headerChunk for: email].
		'Subject' -> [:headerChunk :email | self parseFetchHeaderSubject: headerChunk for: email].
		'Date' -> [:headerChunk :email | self parseFetchHeaderDate: headerChunk for: email].
		'FLAGS' -> [:headerChunk :email | self parseFetchHeaderFlags: headerChunk for: email].
		'Content-Type' -> [:headerChunk :email | self parseFetchHeaderContentType: headerChunk for: email].
		'Content-Transfer-Encoding' -> [:headerChunk :email | 
			self parseFetchHeaderContentTransferEncoding: headerChunk for: email]}