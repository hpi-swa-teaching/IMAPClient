parsing
populate: anEmail withSubject: aHeaderChunk

	[anEmail subject: aHeaderChunk decodeMimeHeader] on: Error do: [self inform: ('A mail in your account has a undecodeable MIME header')]