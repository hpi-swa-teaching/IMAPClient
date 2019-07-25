constants
parseMethods

	^ Dictionary newFrom: {
		'To' -> [:headerChunk :email | self populate: email withReceiver: headerChunk].
		'From' -> [:headerChunk :email | self populate: email withSender: headerChunk].
		'Subject' -> [:headerChunk :email | self populate: email withSubject: headerChunk].
		'Date' -> [:headerChunk :email | self populate: email withDate: headerChunk].
		'FLAGS' -> [:headerChunk :email | self populate: email withFlags: headerChunk].
		'Content-Type' -> [:headerChunk :email | self populate: email withContentType: headerChunk].
		'Content-Transfer-Encoding' -> [:headerChunk :email | 
			self populate: email withContentTransferEncoding: headerChunk]}