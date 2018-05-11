protocol parse
parseMethods

	^ Dictionary newFrom: {
		'To' -> [ :headerChunk :email | self parseFetchHeaderReceiver: headerChunk for: email ].
		'From' -> [ :headerChunk :email | self parseFetchHeaderSender: headerChunk for: email ].
		'Subject' -> [ :headerChunk :email | self parseFetchHeaderSubject: headerChunk for: email ].
		'Date' -> [ :headerChunk :email | self parseFetchHeaderDate: headerChunk for: email ]}